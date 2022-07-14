int sensorPin = A0; // select the input pin for the potentiometer
int ledPin = 13;   // select the pin for the LED
int sensorValue = 0;  // variable to store the value

void setup() {
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  // read the value from tyhe sensor
  sensorValue = analogRead(sensorPin);
  // turn the led pin on
  digitalWrite(ledPin, HIGH);
  // stop the program for <sensorValue> milliseconds
  delay(sensorValue);
  // turn the ledpin off
  digitalWrite(ledPin, LOW);
  // stop the program for <sensorvalue> milliseconds
  delay(sensorValue);
}
