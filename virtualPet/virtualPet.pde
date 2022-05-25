static int room = 0;
static pet thePet;
static int countdown = 0;

void setup() {
  size(1000, 800);
  thePet = new pet();
}

void draw() {
  background(255);
  thePet.display();
  //if we set a countdown, start a countdown:
  if (countdown > 0) {
    countdown--;
    thePet.isBusy = true; //if we're using timer, that means the pet is likely doing something
  } else {
    thePet.isBusy = false; //once the timer runs out, the pet isn't doing anything
  }
  //reaching up animation:
  if (thePet.currentIdleAction.equals("reachUp")) {
    if (countdown == 99) {
      thePet.catAvatar = loadImage("catReach1.png");
    }
    if (countdown == 50) {
      thePet.catAvatar = loadImage("catReach2.png");
    }
    if (countdown == 1) {
      thePet.catAvatar = loadImage("catNorm.png");
    }
    if (countdown == 0) {
      thePet.currentIdleAction = "";
    }
  }
  
}
