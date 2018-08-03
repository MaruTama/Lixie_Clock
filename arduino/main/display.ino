#include <MsTimer2.h>

// 割込み周期 [ms]
int const INTERVAL = 2;

// 時間設定中に点滅する周期 [ms]
int const FLASH_INTERVAL = 200;

// 時間設定モードでの点滅のためのカウンタ
int count4flash = 0;

// ダイナミック点灯方式での桁の制御
int const HOUR_OF_TEN_DIGIT = 12;
int const HOUR_OF_ONE_DIGIT = 11;
int const MIN_OF_TEN_DIGIT  = 10;
int const MIN_OF_ONE_DIGIT  =  9;
int const SEC_OF_TEN_DIGIT  =  8;
int const SEC_OF_ONE_DIGIT  =  7;

// デコーダに渡す信号線
int const SGL0 = 5; // 2^3 の桁
int const SGL1 = 4; // 2^2 の桁
int const SGL2 = 3; // 2^1 の桁
int const SGL3 = 2; // 2^0 の桁



// LEDの位置とデコーダの出力が逆になっている。(0 で一番奥が光る。)
// そのため、プログラムで反転させる
int signalData[10][4] = 
                    {{1,0,0,1}, 
                     {1,0,0,0}, 
                     {0,1,1,1},
                     {0,1,1,0},
                     {0,1,0,1},
                     {0,1,0,0},
                     {0,0,1,1},
                     {0,0,1,0},
                     {0,0,0,1},
                     {0,0,0,0}};

int nowControlDigit; // 今、表示制御している桁


// ダイナミック点灯の制御を行う
void display_init(){
  pinMode(SGL0, OUTPUT);
  pinMode(SGL1, OUTPUT);
  pinMode(SGL2, OUTPUT);
  pinMode(SGL3, OUTPUT);
  
  pinMode(HOUR_OF_TEN_DIGIT, OUTPUT);
  pinMode(HOUR_OF_ONE_DIGIT, OUTPUT);
  pinMode(MIN_OF_TEN_DIGIT, OUTPUT);
  pinMode(MIN_OF_ONE_DIGIT, OUTPUT);
  pinMode(SEC_OF_TEN_DIGIT, OUTPUT);
  pinMode(SEC_OF_ONE_DIGIT, OUTPUT);

  // hour (左端)から制御する
  nowControlDigit = HOUR_OF_TEN_DIGIT;

  MsTimer2::set(INTERVAL, display);
  MsTimer2::start(); // タイマー割り込み開始
}

// 割り込み時に処理される関数
void display() {
  int num; 
  
  switch(nowControlDigit){
      case HOUR_OF_TEN_DIGIT:
        num = (int) time.hourOfTenDigit;
        break;
      case HOUR_OF_ONE_DIGIT:
        num = (int) time.hourOfOneDigit;
        break;
      case MIN_OF_TEN_DIGIT:
        num = (int) time.minOfTenDigit;
        break;
      case MIN_OF_ONE_DIGIT:
        num = (int) time.minOfOneDigit;
        break;
      case SEC_OF_TEN_DIGIT:
        num = (int) time.secOfTenDigit;
        break;
      case SEC_OF_ONE_DIGIT:
        num = (int) time.secOfOneDigit;
        break;
    }

  // すべてOFFにする
  digitalWrite(HOUR_OF_TEN_DIGIT, HIGH);
  digitalWrite(HOUR_OF_ONE_DIGIT, HIGH);
  digitalWrite(MIN_OF_TEN_DIGIT, HIGH);
  digitalWrite(MIN_OF_ONE_DIGIT, HIGH);
  digitalWrite(SEC_OF_TEN_DIGIT, HIGH);
  digitalWrite(SEC_OF_ONE_DIGIT, HIGH);
  
  // 表示させる数値をデコーダにセットする
  digitalWrite(SGL0, signalData[num][0]);
  digitalWrite(SGL1, signalData[num][1]);
  digitalWrite(SGL2, signalData[num][2]);
  digitalWrite(SGL3, signalData[num][3]);

  // 時刻設定中であるとき
  if(isSetMode){
    // 設定中の桁だけ点滅させる
    if(nowSettingDigit == nowControlDigit){
      // カウントの前半は点灯。後半は消灯
      if(count4flash < (FLASH_INTERVAL / INTERVAL)/2){
        // 表示させる桁をONにする
        digitalWrite(nowControlDigit, LOW);
      }
      count4flash++;
      if(count4flash > (FLASH_INTERVAL / INTERVAL)) count4flash = 0;
    }
    // 設定中以外の桁は通常表示
    else{
      digitalWrite(nowControlDigit, LOW);
    }
  }
  // 通常表示モード
  else{
    // 表示させる桁をONにする
    digitalWrite(nowControlDigit, LOW);
  }
  
  // 右端まで到達したので左端に戻す
  if(nowControlDigit == SEC_OF_ONE_DIGIT) nowControlDigit = HOUR_OF_TEN_DIGIT;
  else nowControlDigit--;

  // 時間取得(RTCから)の周期を作るためのカウンタ
  count4sec++;
}

