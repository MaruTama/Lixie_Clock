/*
 * @Author     : MaruTama
 * @LastUpdate : 2018/08/02
 * @Since      : 2018/07/26
 * 
 * @reference
 * [Arduinoでロータリーエンコーダー](https://jiwashin.blogspot.com/2016/12/rotery-encoder-and-arduino.html)
 * [Arduinoでロータリーエンコーダを使いたい話](https://qiita.com/trancingyou/items/4c0504604bab3efcd6f1)
 * [ロータリーエンコーダを使う part 1 : 外部割込みとチャタリング対策](https://jumbleat.com/2016/12/17/encoder_1/)
 */

// 数字の変化させる方向
int const NUM_UP   = 0;
int const NUM_DOWN = 1;

//ピン番号宣言
int const TCT_SW = 15;
int const ENC_A  = 16;
int const ENC_B  = 17;

//変数の宣言
byte valSw;
bool isPushedSw = false;
byte valEnc;

bool isSetMode = false; // 時間設定モードであるか
int nowSettingDigit; // 今、時間設定している桁

// 初期化
void setup(void){
  pinMode(TCT_SW, INPUT);
  pinMode(ENC_A,INPUT_PULLUP);
  pinMode(ENC_B,INPUT_PULLUP);
  Serial.begin(9600);
  RTC_init(); // RTC の初期化
  display_init(); // Lixie の表示の設定を行う
}


// 基本的にボタンとロータリーエンコーダの制御を行う
void loop(void){

  // 時刻取得
  getTime();

 /********************************************************
  * タクトスイッチに関する処理 
  ********************************************************/
  // チャタリングを防ぐために状態を byte 型 で状態変化を保持する
  if(digitalRead(TCT_SW) == 0){
        valSw = valSw<<1;
        valSw += digitalRead(TCT_SW);
        
  }else{
    //押されてなければ初期化
    valSw = 0xff; 
    isPushedSw = false;
  }
  // チャタリングが収まった
  if(valSw == 0x00 && !isPushedSw){
    isPushedSw = true;
    
    // 時間設定モードであるとき
    if(isSetMode){
      if(nowSettingDigit == 12){
        // RTCに時刻を送信する
        isSetMode  = false;
      }
      else{
        nowSettingDigit++;
      }
    }
    // 通常表示 -> 時間設定モードになったとき
    else{
      isSetMode  = true;
      nowSettingDigit = 7;
    }
  }

  
 /********************************************************
  * ロータリーエンコーダに関する処理
  ********************************************************/
  valEnc = valEnc<<2 & B00001100;
  valEnc += (digitalRead(ENC_A)<<1) + (digitalRead(ENC_B));
  /*
   * 次のように変化する.
   * L : 0100 <- 1101 <- 1011 <- 0010 <- 0000
   * R : 0000 -> 0001 -> 0111 -> 1110 -> 1000
   * 今回は、1クリック 4パルスのロータリーエンコーダなので
   * L : 0100
   * R : 1000
   * で判定できる
   */
  switch(valEnc){
    // 時計回り
    case B00000100 :
      Serial.println("Clockwise ");   
      break;

    // 反時計回り
    case B00001000 : 
      Serial.println("revarse ");  
      break;

    default: 
      break;
  }
}
/********************************************************
  * 時刻設定で各時間を調整する関数
  * @param digit : 設定中の桁 
  ********************************************************/
//void setTimes(int digit, int changeDirction){
//  // 時間設定中
//  if(isSetMode){
//    switch(digit){
//      case HOUR_OF_TEN_DIGIT:
//        if(changeDirction == NUM_UP)   time.hourOfTenDigit++;
//        if(changeDirction == NUM_DOWN) time.hourOfOneDigit--;
//        break;
//      case HOUR_OF_ONE_DIGIT:
//        break;
//      case MIN_OF_TEN_DIGIT:
//        break;
//      case MIN_OF_ONE_DIGIT:
//        break;
//      case SEC_OF_TEN_DIGIT:
//        break;
//      case SEC_OF_ONE_DIGIT:
//        break;
//    }
//  }
//}

