#include <Arduino.h>
#include <Wire.h>
#include <SPI.h>
#include <SdFat.h>

#include <LiquidCrystal.h>

#define COUNTING_STATE 0
#define ROTATE_STATE 1

#define TARGET_ANGLE 50.0f //degreese
#define TIME 7200000         //milliseconds
#define REMIND_TIME 15000

// PINS ------------------------------------------------------
const int MPU_addr = 0x68;
const int rs = 2, en = 3, d4 = 6, d5 = 7, d6 = 5, d7 = 4;
const int piezoPin = 9;
const int chipSelect = 10;
// PINS ------------------------------------------------------

LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

unsigned long previous_time = 0;
unsigned long lcd_refresh = 0;
unsigned long resting_time = 0;

float restingX, restingY, restingZ;
float rotationX, rotationY, rotationZ;
float scaledX,scaledY,scaledZ;

byte state = 0;

// LOGGING DATA -----------------------------------------------------------
const uint32_t LOG_INTERVAL_USEC = 2000;
const uint8_t BUFFER_BLOCK_COUNT = 10;
const uint32_t FILE_BLOCK_COUNT = 256000;
const uint8_t ACCEL_DIM = 3;
const uint8_t GYRO_DIM = 3;

//sdfat
SdFat sd;
SdBaseFile binFile;
char fileName[13];

struct data_t
{
  uint32_t time;
  int16_t accel[ACCEL_DIM];
  int16_t gyro[GYRO_DIM];
  int16_t temp;
};

// DATA BLOCK 512 bytes --------------------------------------------------------------------
// Number of data records in a block.
const uint16_t DATA_DIM = (512 - 2) / sizeof(data_t);

//Compute fill so block size is 512 bytes.  FILL_DIM may be zero.
const uint16_t FILL_DIM = 512 - 2 - DATA_DIM * sizeof(data_t);

//size of the queue
const uint8_t QUEUE_DIM = BUFFER_BLOCK_COUNT + 1;
// Index of last queue location.
const uint8_t QUEUE_LAST = QUEUE_DIM - 1;

//data
struct block_t
{
  uint16_t count;
  data_t data[DATA_DIM];
  uint8_t fill[FILL_DIM];
};

bool isResting(float x, float y, float z);
void createBin();
void sdFail(const char *);
float arcAngle(float tx, float ty, float tz, float fx, float fy, float fz);
void acquireData(data_t *data);

void setup()
{
  pinMode(piezoPin,OUTPUT);

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
  Wire.write(B00001000); //here is the byte for sensitivity (8g here)
  Wire.endTransmission(true);
  lcd.begin(16, 2);
}

void loop()
{
    createBin();

    const uint8_t QUEUE_DIM = BUFFER_BLOCK_COUNT + 1;
    // Index of last queue location.
    const uint8_t QUEUE_LAST = QUEUE_DIM - 1;

    // Allocate extra buffer space.
    block_t block[BUFFER_BLOCK_COUNT - 1];

    block_t *curBlock = 0;

    block_t *emptyStack[BUFFER_BLOCK_COUNT];
    uint8_t emptyTop;
    uint8_t minTop;

    block_t *fullQueue[QUEUE_DIM];
    uint8_t fullHead = 0;
    uint8_t fullTail = 0;

    emptyStack[0] = (block_t *)sd.vol()->cacheClear();
    if (emptyStack[0] == 0)
    {
        return;
    }
    // Put rest of buffers on the empty stack.
    for (int i = 1; i < BUFFER_BLOCK_COUNT; i++)
    {
        emptyStack[i] = &block[i - 1];
    }
    emptyTop = BUFFER_BLOCK_COUNT;
    minTop = BUFFER_BLOCK_COUNT;

    // Start a multiple block write.
    if (!sd.card()->writeStart(binFile.firstBlock()))
    {
        return;
    }

    uint32_t bn = 0;
    uint32_t maxLatency = 0;
    uint32_t logTime = micros();

  while(1){
    // --------------------------- Recording Data ----------------------------------------------

    // Time for next data record.
    logTime += LOG_INTERVAL_USEC;
  
    if (curBlock == 0 && emptyTop != 0)
    {
      curBlock = emptyStack[--emptyTop];
      if (emptyTop < minTop)
      {
        minTop = emptyTop;
      }
      curBlock->count = 0;
    }
    int32_t delta;
    do
    {
      delta = micros() - logTime;
    } while (delta < 0);
    if (curBlock != 0)
    {
      acquireData(&curBlock->data[curBlock->count++]);
      if (curBlock->count == DATA_DIM)
      {
        fullQueue[fullHead] = curBlock;
        fullHead = fullHead < QUEUE_LAST ? fullHead + 1 : 0;
        curBlock = 0;
      }
    }

    switch (state)
    {
      case ROTATE_STATE:
      {
        float angle = arcAngle(restingX, restingY, restingZ, rotationX, rotationY, rotationZ);

        if ((millis() - lcd_refresh) > 500)
        {
          lcd.clear();
          lcd.setCursor(0, 0);
          lcd.print(100.0f * (angle / TARGET_ANGLE));
          lcd.print('%');
          lcd.setCursor(0, 1);
          lcd.print("Re-Pos");
          lcd_refresh = millis();
        }
        if ((millis() - previous_time) > REMIND_TIME)
        {
          tone(piezoPin, 1000, 500);
          previous_time = millis();
        }

        if (angle > TARGET_ANGLE)
        {
          state = COUNTING_STATE;
          tone(piezoPin, 200, 500);
          delay(1000);                             
          tone(piezoPin, 200, 500);
          previous_time = millis();
        }
        if (!isResting(scaledX,scaledY,scaledZ)){
          resting_time = millis();
        }
        if ((millis() - resting_time) > 1000)
        {
            rotationX = .2f * scaledX + (1 - .2f) * rotationX;
            rotationY = .2f * scaledY + (1 - .2f) * rotationY;
            rotationZ = .2f * scaledZ + (1 - .2f) * rotationZ;
        }
      }
      break;
      case COUNTING_STATE:
      {
        if ((millis() - lcd_refresh) > 500)
        {
          lcd.clear();
          lcd.setCursor(0, 0);
          lcd.print((millis() - previous_time) / 1000);
          lcd.print("/");
          lcd.setCursor(0, 1);
          lcd.print(TIME / 1000);
          lcd_refresh = millis();
        }

        if ((millis() - previous_time) > TIME)
        {
          tone(piezoPin, 1000, 500);
          state = ROTATE_STATE;
          rotationX = restingX;
          rotationY = restingY;
          rotationZ = restingZ;
        }

        if (!isResting(scaledX,scaledY,scaledZ)){
          resting_time = millis();
        }
        if ((millis() - resting_time) > 1000)
        {
            restingX = .2f * scaledX + (1 - .2f) * restingX;
            restingY = .2f * scaledY + (1 - .2f) * restingY;
            restingZ = .2f * scaledZ + (1 - .2f) * restingZ;

        }
      }
      break;
    }
    


    if (fullHead != fullTail && !sd.card()->isBusy())
    {
      // Get address of block to write.
      block_t *pBlock = fullQueue[fullTail];
      fullTail = fullTail < QUEUE_LAST ? fullTail + 1 : 0;
      // Write block to SD.
      uint32_t usec = micros();
      if (!sd.card()->writeData((uint8_t *)pBlock))
      {
        sdFail("Write Fail");
      }
      usec = micros() - usec;
      if (usec > maxLatency)
      {
        maxLatency = usec;
      }
      // Move block to empty queue.
      emptyStack[emptyTop++] = pBlock;
      bn++;
      if (bn == FILE_BLOCK_COUNT)
      {
        // file full so create a new bin file and continue
        break;
      }
    }
  }
}

float arcAngle(float tx, float ty, float tz, float fx, float fy, float fz)
{
  float tmag = sqrt((tx * tx) + (ty * ty) + (tz * tz));
  float fmag = sqrt((fx * fx) + (fy * fy) + (fz * fz));
  return acos((tx * fx + ty * fy + tz * fz) / (tmag * fmag)) * (180.0f / PI);
}

bool isResting(float x, float y, float z)
{
  return abs(1.0f - sqrt((x * x) + (y * y) + (z * z))) < .05f;
}

void createBin()
{
  // max number of blocks to erase per erase call
  const uint32_t ERASE_SIZE = 262144L;
  uint32_t bgnBlock, endBlock;

  if (!sd.begin(chipSelect, SD_SCK_MHZ(50)))
  {
    sdFail("REQ SD");
  }
  else
  {
    int count = 0;
    while (true)
    {
      sprintf_P(fileName, PSTR("LOG%05u.BIN"), count);
      if (count > 65533) //There is a max of 65534 logs
      {
        sdFail("Max log");
      }
      if (!sd.exists(fileName))
      {
        // create a new bin file if exsists
        binFile.close();
        if (!binFile.createContiguous(fileName, 512 * FILE_BLOCK_COUNT))
        {
          sdFail("CRT CONT");
        }

        // Get the address of the file on the SD.
        if (!binFile.contiguousRange(&bgnBlock, &endBlock))
        {
          sdFail("CRT CONT");
        }

        // Flash erase all data in the file.
        uint32_t bgnErase = bgnBlock;
        uint32_t endErase;
        while (bgnErase < endBlock)
        {
          endErase = bgnErase + ERASE_SIZE;
          if (endErase > endBlock)
          {
            endErase = endBlock;
          }
          if (!sd.card()->erase(bgnErase, endErase))
          {
            sdFail("Ers Fail");
          }
          bgnErase = endErase + 1;
        }

        break;
      }
      count++;
    }
  }
}

void sdFail(const char *str)
{
  lcd.clear();
  lcd.setCursor(0, 1);
  lcd.print("SD CARD");
  lcd.setCursor(0, 0);
  lcd.print(str);

  while (1)
    ;
}

void acquireData(data_t *data)
{
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x3B); // starting with register 0x3B (ACCEL_XOUT_H)
  Wire.endTransmission(false);
  Wire.requestFrom(MPU_addr, 14, true);            // request a total of 14 registers
  data->accel[0] = Wire.read() << 8 | Wire.read(); // 0x3B (ACCEL_XOUT_H) & 0x3C (ACCEL_XOUT_L)
  data->accel[1] = Wire.read() << 8 | Wire.read(); // 0x3D (ACCEL_YOUT_H) a& 0x3E (ACCEL_YOUT_L)
  data->accel[2] = Wire.read() << 8 | Wire.read(); // 0x3F (ACCEL_ZOUT_H) & 0x40 (ACCEL_ZOUT_L)
  data->temp = Wire.read() << 8 | Wire.read();     // 0x41 (TEMP_OUT_H) & 0x42 (TEMP_OUT_L)
  data->gyro[0] = Wire.read() << 8 | Wire.read();  // 0x43 (GYRO_XOUT_H) & 0x44 (GYRO_XOUT_L)
  data->gyro[1] = Wire.read() << 8 | Wire.read();  // 0x45 (GYRO_YOUT_H) & 0x46 (GYRO_YOUT_L)
  data->gyro[2] = Wire.read() << 8 | Wire.read();  // 0x47 (GYRO_ZOUT_H) & 0x48 (GYRO_ZOUT_L)
  data->time = micros();

  scaledX = ((float)data->accel[0])/8192.0;
  scaledY = ((float)data->accel[1])/8192.0;
  scaledZ = ((float)data->accel[2])/8192.0;

}