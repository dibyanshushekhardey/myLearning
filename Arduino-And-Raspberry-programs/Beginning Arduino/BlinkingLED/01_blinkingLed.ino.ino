/*
File name : 01_blinkingLed.ino
Description: LED Blinking lights
Author: Dibyanshu Shekhar Dey
Date: 10/04/2021  
 
*/

int ledPin = 8; //definition digital 8 pins as pin to control the LED
void setup() {
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT); // set the digital 8 port mode, OUTPUT: Output mode

}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(ledPin, HIGH); // high is set to above 5v pin8
  delay(1000); // set the delay time, 1000 = 1s
  digitalWrite(ledPin, LOW); // low is set to about 5v pin8
  delay(1000); // set the delay time, 1000 = 1s

}
