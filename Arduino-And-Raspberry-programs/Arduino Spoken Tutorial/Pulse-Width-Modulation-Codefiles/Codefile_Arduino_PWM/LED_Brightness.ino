
Experiment 1 : LED_Brightness

int LED_Pin = 9;
int duty_cycle_value = 1; 

void setup()
{
pinMode( LED_Pin, OUTPUT);
}


void loop()
{
while (duty_cycle_value<255) 
{
  analogWrite(LED_Pin, duty_cycle_value);
  delay(3000);
  duty_cycle_value++;
}
}


