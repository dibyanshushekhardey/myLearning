// file to change the rte of LED blinking using potentiometer :)
int sensorPin = A0;
int ledPin = 13;
int sensorValue = 0;


void setup() {
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  sensorValue = analogRead(sensorPin);
  // turn the led pin on
  digitalWrite(ledPin, HIGH);
  // stp the program for <sensorValue> milliseconds
  delay(sensorValue);
  // turn the led pin OFF
  digitalWrite(ledPin, LOW);
  // stop the program for <sensorValue> milliseconds
  delay(sensorValue);

}
