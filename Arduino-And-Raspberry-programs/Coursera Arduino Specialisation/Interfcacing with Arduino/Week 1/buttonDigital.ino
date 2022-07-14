// constants use in the code
const int buttonPin = 2;
const int ledPin = 13;

// variables
int buttonState = 0;

void setup(){
  // initialising the led pin as output
  pinMode(ledPin, OUTPUT);
  // initialise the pushbutton pin as input
  pinMode(buttonPin, INPUT); 
}

void loop(){
  // read the state of the pushbutton value
  buttonState = digitalRead(buttonPin);

  // check if the pushbutton is presseed if yes turn the led on else off
  if(buttonState == HIGH){
    // turn the led on
    digitalWrite(ledPin, HIGH);
  }
  else{
    // turn LED Pin off
    digitalWrite(ledPin, LOW);
  }
}
