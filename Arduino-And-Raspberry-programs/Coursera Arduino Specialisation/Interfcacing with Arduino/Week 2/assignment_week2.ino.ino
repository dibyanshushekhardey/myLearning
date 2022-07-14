
int sensorPin = A0;    // select the input pin for the potentiometer
int ledPin = 13;      // select the pin for the LED
int sensorValue = 0;  // variable to store the value coming from the sensor
#define THRESHOLD 200

void setup() {
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  // read the value from the sensor:
  sensorValue = analogRead(sensorPin);   
  if (sensorValue <= THRESHOLD){
    digitalWrite(ledPin, HIGH);
  }
  else{
    digitalWrite(ledPin, LOW);
  }
}


/*
#define LED_PIN    13
#define SENSOR_PIN A0

#define BRIGHTNESS_THRESHOLD 500

void setup() {
  pinMode(LED_PIN, OUTPUT);
}

void loop() {
  int sensorValue = analogRead(SENSOR_PIN);
  int state = (sensorValue <= BRIGHTNESS_THRESHOLD) ? HIGH : LOW;
  digitalWrite(LED_PIN, state);
  }
  */
/*
#define LED 13

void setup() {
  Serial.begin(9600);
}

void loop() {

  int sensorValue = analogRead(A0);

  Serial.println(sensorValue);
  delay(10);  
  
  if (sensorValue < 300){
   
    digitalWrite(LED, HIGH);
    
  }
    else  {
    digitalWrite(LED, LOW);
  }
}
*/
