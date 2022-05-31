static int room = 0;
static pet thePet;
static int countdown = 0;
//the moods:
static happiness a;
static hunger b;
static cleanliness c;
static awakeness d;

static int livingRoom = 0;
static int kitchen = 1;
static int bathroom = 2;
static int bedroom = 3;
static PImage background;
static PImage aBackground;
static PImage bBackground;
static PImage cBackground;
static PImage dBackground;

//the draggable mood objects:
static toy ball;
static food bowl;
static cleaner soap;
static lights pillow;
//REMINDER ADD MORE

void setup() {
  size(1000, 800);
  thePet = new pet();
  aBackground = loadImage("livingRoom.jpg");
  bBackground = loadImage("kitchen.jpg");
  cBackground = loadImage("bathroom.jpg");
  dBackground = loadImage("bedroom.jpg");
  background = aBackground;
  //the moods:
  a = new happiness();
  b = new hunger();
  c = new cleanliness();
  d = new awakeness();
  //the draggable mood objects:
  ball = new toy("ballStill.png", 800, 450, 80, 80);
  bowl = new food("foodBowlStill.png", 200, 450, 80, 80);
  soap = new cleaner("soapStill.png", 800, 450, 80, 80);
  pillow = new lights("pillowStill.png", 200, 400, 160,160);
}

void changeBackground(int room) {
  if (room == livingRoom) {
    background = aBackground;
  } else if (room == kitchen) {
    background = bBackground;
  } else if (room == bathroom) {
    background = cBackground;
  } else if (room == bedroom) {
    background = dBackground;
  }
}

void draw() {
  background(255);
  changeBackground(room);
  image(background, 0, 0, 1000, 800);
  //always be decreasing all moods:
  if ((int) (Math.random()*500) > 495) {
    a.decrease();
    b.decrease();
    c.decrease();
    d.decrease();
  }
  //display the bottom buttons:
  a.display();
  b.display();
  c.display();
  d.display();
  //display the pet:
  thePet.display();
  //display the draggable mood objects:
  ball.display(room);
  bowl.display(room);
  soap.display(room);
  pillow.display(room);
  //if we set a countdown, start a countdown:
  if (countdown > 0) {
    countdown--;
    thePet.isBusy = true; //if we're using timer, that means the pet is likely doing something
  } else {
    thePet.isBusy = false; //once the timer runs out, the pet isn't doing anything
  }
  //reaching up animation: (idle action)
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
  //circling animation: (idle action)
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
  //when the clickable mood objects are dragged to the cat, do the animation, change moods:
  if (room == 0 && !ball.beingUsed && !mousePressed && dist(ball.xPos+(ball.imgWidth/2), ball.yPos+(ball.imgHeight/2), thePet.xPos+250, thePet.yPos+250) < 225) {
    ball.clicked(ball.beingUsed); //sets the countdown once
    ball.beingUsed = true;
    ball.xPos = 800;
    ball.yPos = 450;
  }
  if (room == 0 && ball.beingUsed) {
    if (countdown == 79) {
      thePet.catAvatar = loadImage("catBall1.png");
    }
    if (countdown == 70) {
      thePet.catAvatar = loadImage("catBall2.png");
    }
    if (countdown == 61) {
      thePet.catAvatar = loadImage("catBall3.png");
    }
    if (countdown == 52) {
      thePet.catAvatar = loadImage("catBallDown.png");
    }
    if (countdown == 43) {
      thePet.catAvatar = loadImage("catBallUp.png");
    }
    if (countdown == 34) {
      thePet.catAvatar = loadImage("catBallDown.png");
    }
    if (countdown == 25) {
      thePet.catAvatar = loadImage("catBallUp.png");
    }
    if (countdown == 16) {
      thePet.catAvatar = loadImage("catBall3.png");
    }
    if (countdown == 7) {
      thePet.catAvatar = loadImage("catBall2.png");
    }
    if (countdown == 1) {
      thePet.catAvatar = loadImage("catNorm.png");
    }
    if (countdown == 0) {
      ball.beingUsed = false;
    }
  }
  if (room == 1 && !bowl.beingUsed && !mousePressed && dist(bowl.xPos+(bowl.imgWidth/2), bowl.yPos+(bowl.imgHeight/2), thePet.xPos+250, thePet.yPos+250) < 225) {
    bowl.clicked(bowl.beingUsed); //sets the countdown once
    bowl.beingUsed = true;
    bowl.xPos = 200;
    bowl.yPos = 450;
  }
  if (room == 1 && bowl.beingUsed) {
    //...animation REMINDER
    if (countdown == 79) {
      thePet.catAvatar = loadImage("catEat1.png");
    }
    if (countdown == 70) {
      thePet.catAvatar = loadImage("catEat2.png");
    }
    if (countdown == 61) {
      thePet.catAvatar = loadImage("catEat3.png");
    }
    if (countdown == 52) {
      thePet.catAvatar = loadImage("catEat4.png");
    }
    if (countdown == 43) {
      thePet.catAvatar = loadImage("catEat3.png");
    }
    if (countdown == 34) {
      thePet.catAvatar = loadImage("catEat4.png");
    }
    if (countdown == 25) {
      thePet.catAvatar = loadImage("catEat3.png");
    }
    if (countdown == 16) {
      thePet.catAvatar = loadImage("catEat2.png");
    }
    if (countdown == 7) {
      thePet.catAvatar = loadImage("catEat1.png");
    }
    if (countdown == 1) {
      thePet.catAvatar = loadImage("catNorm.png");
    }
    if (countdown == 0) {
      bowl.beingUsed = false;
    }
  }
  if (room == 2 && !soap.beingUsed && !mousePressed && dist(soap.xPos+(soap.imgWidth/2), soap.yPos+(soap.imgHeight/2), thePet.xPos+250, thePet.yPos+250) < 225) {
    soap.clicked(soap.beingUsed); //sets the countdown once
    soap.beingUsed = true;
    soap.xPos = 200;
    soap.yPos = 450;
  }
  if (room == 2 && soap.beingUsed) {
    if (countdown == 79) {
      thePet.catAvatar = loadImage("catSoap1.png");
    }
    if (countdown == 70) {
      thePet.catAvatar = loadImage("catSoap2.png");
    }
    if (countdown == 61) {
      thePet.catAvatar = loadImage("catSoap3.png");
    }
    if (countdown == 52) {
      thePet.catAvatar = loadImage("catSoap4.png");
    }
    if (countdown == 43) {
      thePet.catAvatar = loadImage("catSoap5.png");
    }
    if (countdown == 34) {
      thePet.catAvatar = loadImage("catSoap4.png");
    }
    if (countdown == 25) {
      thePet.catAvatar = loadImage("catSoap5.png");
    }
    if (countdown == 16) {
      thePet.catAvatar = loadImage("catSoap6.png");
    }
    if (countdown == 7) {
      thePet.catAvatar = loadImage("catSoap7.png");
    }
    if (countdown == 1) {
      thePet.catAvatar = loadImage("catNorm.png");
    }
    if (countdown == 0) {
      soap.beingUsed = false;
    }
  }
  if (room == 3 && !pillow.beingUsed && !mousePressed && dist(pillow.xPos+(pillow.imgWidth/2), pillow.yPos+(pillow.imgHeight/2), thePet.xPos+250, thePet.yPos+250) < 225) {
    pillow.clicked(pillow.beingUsed); //sets the countdown once
    pillow.beingUsed = true;
    pillow.xPos = 200;
    pillow.yPos = 400;
  }
  if (room == 3 && pillow.beingUsed) {
    if (countdown == 79) {
      thePet.catAvatar = loadImage("catSleep1.png");
    }
    if (countdown == 70) {
      thePet.catAvatar = loadImage("catSleep2.png");
    }
    if (countdown == 61) {
      thePet.catAvatar = loadImage("catSleep3.png");
    }
    if (countdown == 52) {
      thePet.catAvatar = loadImage("catSleep4.png");
    }
    if (countdown == 43) {
      thePet.catAvatar = loadImage("catSleep3.png");
    }
    if (countdown == 34) {
      thePet.catAvatar = loadImage("catSleep2.png");
    }
    if (countdown == 25) {
      thePet.catAvatar = loadImage("catSleep3.png");
    }
    if (countdown == 16) {
      thePet.catAvatar = loadImage("catSleep2.png");
    }
    if (countdown == 7) {
      thePet.catAvatar = loadImage("catSleep1.png");
    }
    if (countdown == 1) {
      thePet.catAvatar = loadImage("catNorm.png");
    }
    if (countdown == 0) {
      pillow.beingUsed = false;
    }
  }
  //standard x and y positions for the clickable mood objects:
  if (!mousePressed) {
    ball.xPos = 800;
    ball.yPos = 450;
  }
  if (!mousePressed) {
    bowl.xPos = 200;
    bowl.yPos = 450;
  }
  if (!mousePressed) {
    soap.xPos = 800;
    soap.yPos = 450;
  }
  if (!mousePressed) {
    pillow.xPos = 200;
    pillow.yPos = 400;
  }
}

//when you click the cat, it gets hit:
void mouseClicked() {
  if (dist(mouseX, mouseY, thePet.xPos+250, thePet.yPos+250) < 100) {
    thePet.catAvatar = loadImage("catHit1.png");
    a.decrease(0.03);
  }
  if (dist(mouseX, mouseY, 200, 700) < 50) {
    room = livingRoom;
    countdown = 0;
    thePet.catAvatar = loadImage("catNorm.png");
  }
  if (dist(mouseX, mouseY, 400, 700) < 50) {
    room = kitchen;
    countdown = 0;
    thePet.catAvatar = loadImage("catNorm.png");
  }
  if (dist(mouseX, mouseY, 600, 700) < 50) {
    room = bathroom;
    countdown = 0;
    thePet.catAvatar = loadImage("catNorm.png");
  }
  if (dist(mouseX, mouseY, 800, 700) < 50) {
    room = bedroom;
    countdown = 0;
    thePet.catAvatar = loadImage("catNorm.png");
  }
}

//for dragging all the clickable mood objects:
void mouseDragged() {
  //toy - ball:
  if (dist(mouseX, mouseY, ball.xPos+(ball.imgWidth/2), ball.yPos+(ball.imgHeight/2)) < ball.imgWidth/2) {
    ball.xPos = mouseX-(ball.imgWidth/2);
    ball.yPos = mouseY-(ball.imgHeight/2);
  }
  //food - bowl:
  if (dist(mouseX, mouseY, bowl.xPos+(bowl.imgWidth/2), bowl.yPos+(bowl.imgHeight/2)) < bowl.imgWidth/2) {
    bowl.xPos = mouseX-(bowl.imgWidth/2);
    bowl.yPos = mouseY-(bowl.imgHeight/2);
  }
  //cleaner - soap:
  if (dist(mouseX, mouseY, soap.xPos+(soap.imgWidth/2), soap.yPos+(soap.imgHeight/2)) < soap.imgWidth/2) {
    soap.xPos = mouseX-(soap.imgWidth/2);
    soap.yPos = mouseY-(soap.imgHeight/2);
  }
  //lights - pillow:
  if (dist(mouseX, mouseY, pillow.xPos+(pillow.imgWidth/2), pillow.yPos+(pillow.imgHeight/2)) < pillow.imgWidth/2) {
    pillow.xPos = mouseX-(pillow.imgWidth/2);
    pillow.yPos = mouseY-(pillow.imgHeight/2);
  }
}
