int led = 9;
int brightness = 0;// how bright led is
int fadeAmount = 5; // how many points to fade by LED
void setup()
{
  pinMode(led, OUTPUT);
}

void loop()
{
  analogWrite(led, brightness);
  brightness = brightness + fadeAmount;
  if(brightness == 0 || brightness == 255)
  {
    fadeAmount = -fadeAmount;
  }
    delay(300); // Wait for 300 millisecond(s)
}
