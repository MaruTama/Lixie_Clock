// [Tiny RTC](https://www.elecrow.com/wiki/index.php?title=Tiny_RTC)

#include <Wire.h>
#include "RTClib.h"
RTC_DS1307 RTC;

void RTC_init(){
  Wire.begin();
  RTC.begin();
  if (! RTC.isrunning()) {
    Serial.println("RTC is NOT running!");
    // コンパイル時間から時間をセットしている
    RTC.adjust(DateTime(__DATE__, __TIME__));
  }
}
void viewClock(){
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
}

