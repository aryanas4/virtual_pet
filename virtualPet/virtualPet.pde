static int room = 0;
static pet thePet;

void setup() {
  size(1000, 800);
  thePet = new pet();
}

void draw() {
  background(255);
  thePet.display();
}
