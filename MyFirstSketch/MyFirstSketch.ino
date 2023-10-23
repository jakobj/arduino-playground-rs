extern "C" {
   int my_example_rust_function();
}

void setup() {
  Serial.begin(9600);
  while (!Serial);
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
  Serial.print("Hello, world!\n");
  Serial.print("from rust: ");
  Serial.print(my_example_rust_function());
  Serial.print("\n");
  digitalWrite(LED_BUILTIN, HIGH);
  delay(200);
  digitalWrite(LED_BUILTIN, LOW);
  delay(200);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(200);
  digitalWrite(LED_BUILTIN, LOW);
  delay(200);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(200);
  digitalWrite(LED_BUILTIN, LOW);
  delay(200);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(1000);
  digitalWrite(LED_BUILTIN, LOW);
  delay(200);
}
