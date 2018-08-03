// [Tiny RTC](https://www.elecrow.com/wiki/index.php?title=Tiny_RTC)

#include <Wire.h>
#include "RTClib.h"
RTC_DS1307 RTC;

/********************************************************
 * 時間の保持を行う構造体
 * 
 * 時間取得は、1秒に1回行えばいいが、
 * 表示管理に関しては1ms の周期で行うので、
 * 表示の度に十の位と一の位に分解するのはコストが大きい。そのため、最初に構造体で分けておく
 ********************************************************/
struct time_t { 
  uint16_t year;
  uint8_t month;
  uint8_t day;
  uint8_t hourOfTenDigit;
  uint8_t hourOfOneDigit;
  uint8_t minOfTenDigit;
  uint8_t minOfOneDigit;
  uint8_t secOfTenDigit;
  uint8_t secOfOneDigit;
};

// 時刻初期化
time_t time = {2018, 8, 4, 0,1,  2,3,  4,5};

// 1秒ごとにRTCから時刻を取得したいので、
// タイマー関数で1秒をカウントする
int count4sec = 0;

void RTC_init(){
  Wire.begin();
  RTC.begin();
  if (! RTC.isrunning()) {
    Serial.println("RTC is NOT running!");
    // 時間を設定する
    RTC.adjust(DateTime(
                 time.year, time.month, time.day, 
                 (uint8_t) (time.hourOfTenDigit*10 + time.hourOfOneDigit), 
                 (uint8_t) (time.minOfTenDigit *10 + time.minOfOneDigit), 
                 (uint8_t) (time.secOfTenDigit *10 + time.secOfOneDigit)
               ));
  }
}
void viewTime(){
  DateTime now = RTC.now(); 
  Serial.print(now.year(), DEC);
  Serial.print('/');
  Serial.print(now.month(), DEC);
  Serial.print('/');
  Serial.print(now.day(), DEC);
  Serial.print(' ');
  Serial.print(now.hour(), DEC);
  Serial.print(':');
  Serial.print(now.minute(), DEC);
  Serial.print(':');
  Serial.print(now.second(), DEC);
  Serial.println();
  delay(1000);
}
// 1秒ごとにRTCから時間を取得する
void getTime(){
  if(count4sec > (1000 / 2) && !isSetMode){
    DateTime now = RTC.now(); 
    time.hourOfTenDigit = now.hour() / 10;
    time.hourOfOneDigit = now.hour() - (time.hourOfTenDigit * 10);
    time.minOfTenDigit  = now.minute() / 10;
    time.minOfOneDigit  = now.minute() - (time.minOfTenDigit * 10);
    time.secOfTenDigit  = now.second() / 10;
    time.secOfOneDigit  = now.second() - (time.secOfTenDigit * 10);
    count4sec = 0;
  }
}

