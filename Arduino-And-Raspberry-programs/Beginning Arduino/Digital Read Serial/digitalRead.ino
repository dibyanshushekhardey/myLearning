// C++ code
//
int pushButton = 2; // digital pin 2 has pushbutton attached to it

void setup()
{
  Serial.begin(9600);
  // making the pushbutton's pin as input
  pinMode(pushButton, INPUT);
}

void loop()
{
  int buttonState = digitalRead(pushButton);
  // print out the state of the button
  Serial.println(buttonState);
  delay(1);
}

