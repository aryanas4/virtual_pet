static int room = 0;
static pet thePet;
static int countdown = 0;
static happiness a;
static hunger b;
static cleanliness c;
static awakeness d;

void setup() {
  size(1000, 800);
  thePet = new pet();
  a = new happiness();
  b = new hunger();
  c = new cleanliness();
  d = new awakeness();
}

void draw() {
  background(255);
  a.display();
  b.display();
  c.display();
  d.display();
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
    if (countdown == 79) {
      thePet.catAvatar = loadImage("catReach1.png");
    }
    if (countdown == 40) {
      thePet.catAvatar = loadImage("catReach2.png");
    }
    if (countdown == 1) {
      thePet.catAvatar = loadImage("catNorm.png");
    }
    if (countdown == 0) {
      thePet.currentIdleAction = "";
    }
  }
  //circling animation:
  if (thePet.currentIdleAction.equals("circle")) {
    if (countdown == 79) {
      thePet.catAvatar = loadImage("catCircle1.png");
    }
    if (countdown == 69) {
      thePet.catAvatar = loadImage("catCircle2.png");
    }
    if (countdown == 59) {
      thePet.catAvatar = loadImage("catCircle3.png");
    }
    if (countdown == 49) {
      thePet.catAvatar = loadImage("catCircle4.png");
    }
    if (countdown == 39) {
      thePet.catAvatar = loadImage("catCircle5.png");
    }
    if (countdown == 29) {
      thePet.catAvatar = loadImage("catCircle6.png");
    }
    if (countdown == 19) {
      thePet.catAvatar = loadImage("catCircle7.png");
    }
    if (countdown == 9) {
      thePet.catAvatar = loadImage("catCircle8.png");
    }
    if (countdown == 1) {
      thePet.catAvatar = loadImage("catNorm.png");
    }
    if (countdown == 0) {
      thePet.currentIdleAction = "";
    }
  }
  
}
