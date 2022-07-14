void setup()
{
  // initialise serial communication at 9600 bits per second
  Serial.begin(9600);
}

void loop(){
  // read the input value pf analog pin 0
  int sensorValue = analogRead(A0);
  // convert the analog reading to a voltage (0 - 5V)
  float voltage = sensorValue * ( 5.0 / 1023.0);
  // print out the value you read
  Serial.println(voltage);
}
