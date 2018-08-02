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

//ピン番号宣言
int const TCT_SW = 15;
int const ENC_A  = 16;
int const ENC_B  = 17;


//変数の宣言
byte valSw;
bool isPushedSw = false;

byte valEnc;
byte val;

// 初期化
void setup(void){
  pinMode(TCT_SW, INPUT);
  pinMode(ENC_A,INPUT_PULLUP);
  pinMode(ENC_B,INPUT_PULLUP);
  Serial.begin(9600);
  RTC_init(); // RTC の初期化
}


// 基本的にボタンとロータリーエンコーダの制御を行う
void loop(void){

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
    // 処理
    Serial.println("push!");   
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
      if(val > 0){
      val--;
      }
      Serial.print("Clockwise ");
      Serial.println(val);      
      break;

    // 反時計回り
    case B00001000 : 
      if(val < 255){
      val++;
      }
      Serial.print("revarse ");
      Serial.println(val);      
      break;

    default: 
      break;
  }
  viewClock();
}
