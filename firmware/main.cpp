#include <Arduino.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>

#include <LiquidCrystal.h>

#define COUNTING_STATE 0
#define ROTATE_STATE 1

#define TARGET_ANGLE 40.0f //degreese
#define TIME 10000 //milliseconds

void printDataToSd();
void updateMPU();
bool isResting();
float arcAngle(float tx, float ty, float tz, float fx, float fy, float fz);
// PINS ------------------------------------------------------
const int MPU_addr = 0x68;
const int rs = 2, en = 3, d4 = 6, d5 = 7, d6 = 5, d7 = 4;
const int piezoPin = 9;
const int chipSelect = 10;
// PINS ------------------------------------------------------

LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

int16_t AcX, AcY, AcZ, Tmp, GyX, GyY, GyZ;
unsigned long previous_time = 0;

float scaledX, scaledY, scaledZ;
float restingX, restingY, restingZ;
float rotationX, rotationY, rotationZ;

byte state = 0;
char fileName[13];


void setup()
{

  restingX = .01f;
  restingY = .01f;
  restingZ = .01f;
  rotationX = .1f;
  rotationY = .01f;
  rotationZ = .01f;

  Wire.begin();
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x6B); // PWR_MGMT_1 register
  Wire.write(0);    // set to zero (wakes up the MPU-6050)
  Wire.endTransmission(true);

  Wire.beginTransmission(MPU_addr);
  Wire.write(0x1C);
  Wire.write(B00001000);   //here is the byte for sensitivity (8g here)
  Wire.endTransmission(true);

  if (!SD.begin(chipSelect))
  {
    // don't do anything more:
    lcd.setCursor(0, 1);
    lcd.clear();
    lcd.print("Insert SD");
    while (1);
  }

  int count = 0;
  while (true)
  {
    sprintf_P(fileName, PSTR("LOG%05u.TXT"), count);
    if (!SD.exists(fileName))
    {
      break;
    }

    if (count > 65533) //There is a max of 65534 logs
    {
      lcd.setCursor(0, 1);
      lcd.clear();
      lcd.print("Max Logs");
      while (1)
        ;
    }
    count++;
  }

  lcd.begin(16, 2);
}

void loop()
{
  lcd.clear();
  updateMPU();
  printDataToSd();
  switch (state)
  {
  case ROTATE_STATE:
  {
    float angle = arcAngle(restingX, restingY, restingZ, rotationX, rotationY, rotationZ);
    lcd.setCursor(0, 0);
    lcd.print(100.0f*(angle/TARGET_ANGLE));
    lcd.print('%');
    lcd.setCursor(0, 1);
    lcd.print("Keep turning");

    if(angle > TARGET_ANGLE){
      state = COUNTING_STATE;
      previous_time = millis();
    }
    if (isResting())
    {
      rotationX = .7f * scaledX + (1 - .7f) * rotationX;
      rotationY = .7f * scaledY + (1 - .7f) * rotationY;
      rotationZ = .7f * scaledZ + (1 - .7f) * rotationZ;
    }
  }
  break;
  case COUNTING_STATE:
  {
    // set the cursor to column 0, line 1
    // (note: line 1 is the second row, since counting begins with 0):
    lcd.setCursor(0, 1);
    // print the number of seconds since reset:
    lcd.print((millis() - previous_time) / 1000);
    
    if ((millis() - previous_time) > 10000)
    {
      tone(piezoPin, 1000, 500);
      state = ROTATE_STATE;
      rotationX = restingX;
      rotationY = restingY;
      rotationZ = restingZ;
      
    }

    if (isResting())
    {
      restingX = .7f * scaledX + (1 - .7f) * restingX;
      restingY = .7f * scaledY + (1 - .7f) * restingY;
      restingZ = .7f * scaledZ + (1 - .7f) * restingZ; 
    }
  }
  break;
  }
  delay(100);
}


float arcAngle(float tx, float ty, float tz, float fx, float fy, float fz)
{
  float tmag = sqrt((tx * tx) + (ty * ty) + (tz * tz));
  float fmag = sqrt((fx * fx) + (fy * fy) + (fz * fz));
  return acos((tx * fx + ty * fy + tz * fz) / (tmag * fmag)) * (180.0f / PI);
}

bool isResting()
{
  return abs(1.0f - sqrt((scaledX * scaledX) + (scaledY * scaledY) + (scaledZ * scaledZ))) < .2f;
}

void printDataToSd()
{
  File dataFile = SD.open(fileName, FILE_WRITE);
  if (dataFile)
  {
    dataFile.print(millis());
    dataFile.print(",");
    dataFile.print(AcX);
    dataFile.print(",");
    dataFile.print(AcY);
    dataFile.print(",");
    dataFile.print(AcZ);
    dataFile.print(",");
    dataFile.print(Tmp);
    dataFile.print(",");
    dataFile.print(GyX);
    dataFile.print(",");
    dataFile.print(GyY);
    dataFile.print(",");
    dataFile.print(GyZ);
    dataFile.print("\n");
    dataFile.close();
  }
}

void updateMPU()
{
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x3B); // starting with register 0x3B (ACCEL_XOUT_H)
  Wire.endTransmission(false);
  Wire.requestFrom(MPU_addr, 14, true); // request a total of 14 registers
  AcX = Wire.read() << 8 | Wire.read(); // 0x3B (ACCEL_XOUT_H) & 0x3C (ACCEL_XOUT_L)
  AcY = Wire.read() << 8 | Wire.read(); // 0x3D (ACCEL_YOUT_H) a& 0x3E (ACCEL_YOUT_L)
  AcZ = Wire.read() << 8 | Wire.read(); // 0x3F (ACCEL_ZOUT_H) & 0x40 (ACCEL_ZOUT_L)
  Tmp = Wire.read() << 8 | Wire.read(); // 0x41 (TEMP_OUT_H) & 0x42 (TEMP_OUT_L)
  GyX = Wire.read() << 8 | Wire.read(); // 0x43 (GYRO_XOUT_H) & 0x44 (GYRO_XOUT_L)
  GyY = Wire.read() << 8 | Wire.read(); // 0x45 (GYRO_YOUT_H) & 0x46 (GYRO_YOUT_L)
  GyZ = Wire.read() << 8 | Wire.read(); // 0x47 (GYRO_ZOUT_H) & 0x48 (GYRO_ZOUT_L)

  //convert the acceleration to g's
  scaledX = ((float)AcX) / 8192.0;
  scaledY = ((float)AcY) / 8192.0;
  scaledZ = ((float)AcZ) / 8192.0;
}