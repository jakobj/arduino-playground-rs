extern "C" {
  int my_example_function(int);
}

void setup() {
  Serial.begin(9600);
  delay(1000);
  pinMode(LED_BUILTIN, OUTPUT); // LED is only used for easy status monitoring
  while (!Serial);
}

void loop() {
  Serial.print("Hello, world!\n");
  Serial.print("from extern: ");
  Serial.print(my_example_function(8));
  Serial.print("\n");
  digitalWrite(LED_BUILTIN, HIGH);
  delay(200);
  digitalWrite(LED_BUILTIN, LOW);
  delay(1000);
}
