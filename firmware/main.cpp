#include "Arduino.h"

#include<Wire.h>
#include <SPI.h>
#include <SD.h>

//----------------------- Pins ------------------------------------
const int FSR_BACK = 1;
const int FSR_FRONT = 0;
const int BUZZER_PIN = 2;
const int CHIP_SELECT = 10;


//----------------------- Time Constants -------------------------

// determins when the shoe should write to the logger
const unsigned long SLEEP_TIME = 10000;

// determins how long the vibrating motor runs in ms
const unsigned long BUZZ_TIME = 500;

// --------------------- States -----------------------------------
const char RAISED = 0;
const char FRONT_FOOT = 1;
const char BACK_FOOT = 2;

const float UPPER_THRESHOLD = 600;
const float LOWER_THRESHOLD = 400;

char state = 0;

unsigned long current_time;
unsigned long buzz_time;
unsigned long sleep_time;


const long DELAY = 4000;

unsigned long trigger = 0;

int front_foot_count = 0;
const int FOOT_COUNT_LIMIT = 5;

void setup() {

  Serial.begin(9600);
  delay(1000); //Wait a second for OpenLog to init
  Serial.println();
  pinMode(BUZZER_PIN, OUTPUT);

  if (!SD.begin(CHIP_SELECT)) {
    Serial.println("Card failed, or not present");
    // don't do anything more:
    while (1);
  }
}

void loop()
{

  current_time = millis();

  int fsr_back_foot = analogRead(FSR_BACK);
  int fsr_front_foot = analogRead(FSR_FRONT);

  switch (state) {
    case RAISED:
      if (fsr_front_foot > UPPER_THRESHOLD || fsr_back_foot > UPPER_THRESHOLD) {
        if (fsr_front_foot < fsr_back_foot)
          state = BACK_FOOT;
        else
          state = FRONT_FOOT;
      }
      break;
    case FRONT_FOOT:
      if (fsr_front_foot < LOWER_THRESHOLD && fsr_back_foot < LOWER_THRESHOLD) {
        front_foot_count++;
        state = RAISED;
      }
      break;
    case BACK_FOOT:
      if (fsr_front_foot < LOWER_THRESHOLD && fsr_back_foot < LOWER_THRESHOLD) {
        state = RAISED;
        front_foot_count = 0;
      }
      break;

  }
  if (front_foot_count >= FOOT_COUNT_LIMIT) {
    buzz_time  = current_time + BUZZ_TIME;
    digitalWrite(BUZZER_PIN, HIGH);
    front_foot_count = 0;
  }
  if (current_time > buzz_time)
  {
    digitalWrite(BUZZER_PIN, LOW);
  }

  if (fsr_front_foot > 10 || fsr_back_foot > 10)
  {
    sleep_time = SLEEP_TIME + current_time;
  }

  if (sleep_time > current_time) {
    File dataFile = SD.open("datalog.txt", FILE_WRITE);
    // if the file is available, write to it:
    if (dataFile) {
      dataFile.print(current_time);
      dataFile.print(",");
      dataFile.print(fsr_back_foot);
      dataFile.print(",");
      dataFile.println(fsr_front_foot);
      dataFile.close();
    }
  }

  delay(100);
}



