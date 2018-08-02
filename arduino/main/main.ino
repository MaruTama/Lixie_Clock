/*
 * @Author     : MaruTama
 * @LastUpdate : 2018/07/26
 * @Since      : 2018/07/26
 * 
 * @reference
 * [Arduinoでロータリーエンコーダー](https://jiwashin.blogspot.com/2016/12/rotery-encoder-and-arduino.html)
 * [Arduinoでロータリーエンコーダを使いたい話](https://qiita.com/trancingyou/items/4c0504604bab3efcd6f1)
 * [ロータリーエンコーダを使う part 1 : 外部割込みとチャタリング対策](https://jumbleat.com/2016/12/17/encoder_1/)
 */

//ピン番号宣言
int const ENC_A = 16;
int const ENC_B = 17;

//変数の宣言
byte valenc;
byte val;

void setup(void){
  pinMode(ENC_A,INPUT_PULLUP);
  pinMode(ENC_B,INPUT_PULLUP);
  Serial.begin(9600);
}

void loop(void){
  valenc = valenc<<2 & B00001100;
  valenc += (digitalRead(ENC_A)<<1) + (digitalRead(ENC_B));

/*
 * 次のように変化する.
 * L : 0100 <- 1101 <- 1011 <- 0010 <- 0000
 * R : 0000 -> 0001 -> 0111 -> 1110 -> 1000
 * 今回は、1クリック 4パルスのロータリーエンコーダなので
 * L : 0100
 * R : 1000
 * で判定できる
 */

  switch(valenc){
    //反時計回り
//    case B00000010 :
//    case B00001011 :
//    case B00001101 :
    case B00000100 :
      if(val > 0){
      val--;
      }
      Serial.print("L ");
      Serial.println(val);      
      break;

    //時計回り
//    case B00000001 :
//    case B00000111 :
//    case B00001110 :
    case B00001000 : 
      if(val < 255){
      val++;
      }
      Serial.print("R ");
      Serial.println(val);      
      break;

    default: 
      break;
  }
}
