//use of tune and piezo buzzer at fequencies 988 and 1047
// pin at 8, delay by one second
// B and C scale used at the frequencies
void setup() {
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:
  tone(8, 988, 1000);
  delay(1000);
  tone(8, 1047, 1000);
  delay(1000);

}
