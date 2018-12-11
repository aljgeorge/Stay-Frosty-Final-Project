// Allen George, Cris, Abdulla Final Project Arduino Code

const int relayPin = 8; // the pin that the LED is attached to
int incomingByte;      // a variable to read incoming serial data into
int sensorPin = 13;
int sensorValue; // An integer variable to store the potentiometer reading

void setup() {
  Serial.begin(9600);             // initialize serial communication:
  pinMode(relayPin, OUTPUT);      // initialize the relay pin as an output
  pinMode(sensorPin, INPUT);      // initialize the PIR sensor pin as an input
  delay(3000);                    // 3 seconds delay to calibrate PIR Sensor
}

void loop() {
  sensorValue = digitalRead(sensorPin);    // Reads the value of the sensor. 1 for HIGH, 0 for LOW
  Serial.println(sensorValue);             // Output reading to the serial line
  delay(500);                              // .5 second delay to not overwhelm code
  
  if (Serial.available() > 0) {            // see if there's incoming serial data:
    incomingByte = Serial.read();          // read the oldest byte in the serial buffer:
    
    if (incomingByte == 'H') {             // if it's a capital H (ASCII 72), turn on the relay:
      digitalWrite(relayPin, HIGH);                         
    }
    
    if (incomingByte == 'L') {             // if it's an L (ASCII 76) turn off the relay:
      digitalWrite(relayPin, LOW);
    }
  }
}
