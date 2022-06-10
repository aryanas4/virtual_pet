static int room = 0;
static pet thePet;
static int countdown = 0;
static closetButton theClosetButton;
static closet theCloset;
//the moods:
static happiness a;
static hunger b;
static cleanliness c;
static awakeness d;
//closet buttons:
static hatsButton theHatsButton;
static glassesButton theGlassesButton;
static shirtsButton theShirtsButton;
static pantsButton thePantsButton;
static shoesButton theShoesButton;
static miscButton theMiscButton;
//game buttons:
static game theGame;
static gameButton theGameButton;
static flappyBirdButton theFlappyBirdButton;
//REMINDER: add the rest

static int livingRoom = 0;
static int kitchen = 1;
static int bathroom = 2;
static int bedroom = 3;
static int closet = 4;
static int game = 5;
static PImage background;
static PImage aBackground;
static PImage bBackground;
static PImage cBackground;
static PImage dBackground;
static PImage closetBackground;
static PImage gameBackground;
static PImage zoomTV;

//the draggable mood objects:
static toy ball;
static food bowl;
static cleaner soap;
static lights pillow;

//level
static level level;

void setup() {
  size(1000, 800);
  thePet = new pet();
  aBackground = loadImage("livingRoom.jpg");
  bBackground = loadImage("kitchen.jpg");
  cBackground = loadImage("bathroom.jpg");
  dBackground = loadImage("bedroom.jpg");
  closetBackground = loadImage("closetBackground.png");
  gameBackground = loadImage("gameBackground.png");
  zoomTV = loadImage("zoomTV.png");
  background = aBackground;
  //closet stuff:
  theCloset = new closet();
  theClosetButton = new closetButton();
  theHatsButton = new hatsButton();
  theGlassesButton = new glassesButton();
  theShirtsButton = new shirtsButton();
  thePantsButton = new pantsButton();
  theShoesButton = new shoesButton();
  theMiscButton = new miscButton();
  //game stuff:
  theGame = new game();
  theGameButton = new gameButton();
  theFlappyBirdButton = new flappyBirdButton();
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
  //level
  level = new level();
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
  } else if (room == closet) {
    background = closetBackground;
  } else if (room == game) {
    background = gameBackground;
    if (theGame.selectedGame != -1) {
      background = zoomTV;
    }
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
  //display closet stuff:
  theClosetButton.display();
  if (room == closet) {
    theCloset.display();
    theHatsButton.display(150, 480);
    theGlassesButton.display(200, 550);
    theShirtsButton.display(280, 590);
    thePantsButton.display(360, 600);
    theShoesButton.display(450, 605);
    theMiscButton.display(540, 607);
  }
  theGameButton.display();
  if (room == game) {
    theFlappyBirdButton.display(60, 250);
  }
  if (theFlappyBirdButton.isSelected && theFlappyBirdButton.on) {
    image(theFlappyBirdButton.flappyBirdBackground, theFlappyBirdButton.x, 80);
    image(theFlappyBirdButton.flappyBirdBackground, 
    theFlappyBirdButton.x + theFlappyBirdButton.flappyBirdBackground.width, 80);
    theFlappyBirdButton.x -= 30;
    theFlappyBirdButton.v += 1;
    theFlappyBirdButton.y += theFlappyBirdButton.v;
    if (theFlappyBirdButton.x < -500) {
      theFlappyBirdButton.x = 0;
    }
    image(theFlappyBirdButton.bird, theFlappyBirdButton.flappyBirdBackground.width/2, 
    theFlappyBirdButton.y +400);
  } 
  //display the draggable mood objects:
  ball.display(room);
  bowl.display(room);
  soap.display(room);
  pillow.display(room);
  //display the level
  level.display();
  //if we set a countdown, start a countdown:
  if (countdown > 0) {
    countdown--;
    thePet.isBusy = true; //if we're using timer, that means the pet is likely doing something
  } else {
    thePet.isBusy = false; //once the timer runs out, the pet isn't doing anything
  }
  //reaching up animation: (idle action)
  if (thePet.currentIdleAction.equals("reachUp")) {
    if (countdown == 29) {
      thePet.catAvatar = loadImage("catReach1.png");
    }
    if (countdown == 15) {
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
    if (countdown == 29) {
      thePet.catAvatar = loadImage("catCircle1.png");
    }
    if (countdown == 25) {
      thePet.catAvatar = loadImage("catCircle2.png");
    }
    if (countdown == 21) {
      thePet.catAvatar = loadImage("catCircle3.png");
    }
    if (countdown == 17) {
      thePet.catAvatar = loadImage("catCircle4.png");
    }
    if (countdown == 13) {
      thePet.catAvatar = loadImage("catCircle5.png");
    }
    if (countdown == 9) {
      thePet.catAvatar = loadImage("catCircle6.png");
    }
    if (countdown == 5) {
      thePet.catAvatar = loadImage("catCircle7.png");
    }
    if (countdown == 3) {
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
    level.coin++; //increase coin
    level.increase(0.05); //increase xpPercent
    ball.beingUsed = true;
    ball.xPos = 800;
    ball.yPos = 450;
  }
  if (room == 0 && ball.beingUsed) {
    if (countdown == 49) {
      thePet.catAvatar = loadImage("catBall1.png");
    }
    if (countdown == 43) {
      thePet.catAvatar = loadImage("catBall2.png");
    }
    if (countdown == 37) {
      thePet.catAvatar = loadImage("catBall3.png");
    }
    if (countdown == 31) {
      thePet.catAvatar = loadImage("catBallDown.png");
    }
    if (countdown == 25) {
      thePet.catAvatar = loadImage("catBallUp.png");
    }
    if (countdown == 19) {
      thePet.catAvatar = loadImage("catBallDown.png");
    }
    if (countdown == 13) {
      thePet.catAvatar = loadImage("catBallUp.png");
    }
    if (countdown == 8) {
      thePet.catAvatar = loadImage("catBall3.png");
    }
    if (countdown == 3) {
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
    level.coin++;
    level.increase(0.05); //increase xpPercent
    bowl.beingUsed = true;
    bowl.xPos = 200;
    bowl.yPos = 450;
  }
  if (room == 1 && bowl.beingUsed) {
    //...animation REMINDER
    if (countdown == 49) {
      thePet.catAvatar = loadImage("catEat1.png");
    }
    if (countdown == 43) {
      thePet.catAvatar = loadImage("catEat2.png");
    }
    if (countdown == 37) {
      thePet.catAvatar = loadImage("catEat3.png");
    }
    if (countdown == 31) {
      thePet.catAvatar = loadImage("catEat4.png");
    }
    if (countdown == 25) {
      thePet.catAvatar = loadImage("catEat3.png");
    }
    if (countdown == 19) {
      thePet.catAvatar = loadImage("catEat4.png");
    }
    if (countdown == 13) {
      thePet.catAvatar = loadImage("catEat3.png");
    }
    if (countdown == 8) {
      thePet.catAvatar = loadImage("catEat2.png");
    }
    if (countdown == 3) {
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
    level.coin++;
    level.increase(0.05); //increase xpPercent
    soap.beingUsed = true;
    soap.xPos = 200;
    soap.yPos = 450;
  }
  if (room == 2 && soap.beingUsed) {
    if (countdown == 49) {
      thePet.catAvatar = loadImage("catSoap1.png");
    }
    if (countdown == 43) {
      thePet.catAvatar = loadImage("catSoap2.png");
    }
    if (countdown == 37) {
      thePet.catAvatar = loadImage("catSoap3.png");
    }
    if (countdown == 31) {
      thePet.catAvatar = loadImage("catSoap4.png");
    }
    if (countdown == 25) {
      thePet.catAvatar = loadImage("catSoap5.png");
    }
    if (countdown == 19) {
      thePet.catAvatar = loadImage("catSoap4.png");
    }
    if (countdown == 13) {
      thePet.catAvatar = loadImage("catSoap5.png");
    }
    if (countdown == 8) {
      thePet.catAvatar = loadImage("catSoap6.png");
    }
    if (countdown == 3) {
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
    level.coin++;
    level.increase(0.05); //increase xpPercent
    pillow.beingUsed = true;
    pillow.xPos = 200;
    pillow.yPos = 400;
  }
  if (room == 3 && pillow.beingUsed) {
    if (countdown == 49) {
      thePet.catAvatar = loadImage("catSleep1.png");
    }
    if (countdown == 43) {
      thePet.catAvatar = loadImage("catSleep2.png");
    }
    if (countdown == 37) {
      thePet.catAvatar = loadImage("catSleep3.png");
    }
    if (countdown == 31) {
      thePet.catAvatar = loadImage("catSleep4.png");
    }
    if (countdown == 25) {
      thePet.catAvatar = loadImage("catSleep3.png");
    }
    if (countdown == 19) {
      thePet.catAvatar = loadImage("catSleep2.png");
    }
    if (countdown == 13) {
      thePet.catAvatar = loadImage("catSleep3.png");
    }
    if (countdown == 8) {
      thePet.catAvatar = loadImage("catSleep2.png");
    }
    if (countdown == 3) {
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
  changeRoom(200, 700, livingRoom, 50);
  changeRoom(400, 700, kitchen, 50);
  changeRoom(600, 700, bathroom, 50);
  changeRoom(800, 700, bedroom, 50);
  changeRoom(930, 730, closet, 35);
  changeRoom(930, 650, game, 35);
  //changing which items in closet:
  if (room == closet) {
    closetItemChange(150, 480, "hats", 0);
    closetItemChange(200, 550, "glasses", 1);
    closetItemChange(280, 590, "shirts", 2);
    closetItemChange(360, 600, "pants", 3);
    closetItemChange(450, 605, "shoes", 4);
    closetItemChange(540, 607, "misc", 5);
  }
  if (room == game) {
    gameItemChange(60, 250, "flappyBird", 0);
  }
}

void changeRoom(int xPos, int yPos, int roomNum, int radius) {
  if (dist(mouseX, mouseY, xPos, yPos) < radius) {
    room = roomNum;
    countdown = 0;
    thePet.catAvatar = loadImage("catNorm.png");
    theCloset.selectedItemType = -1;
    theGame.selectedGame = -1;
    removeOtherSelectionsCloset("none");
    removeOtherSelectionsGame("none");
  }
}

void closetItemChange(int xPos, int yPos, String type, int typeNum) {
  if (dist(mouseX, mouseY, xPos, yPos) < 35) {
    theCloset.selectedItemType = typeNum;
    removeOtherSelectionsCloset(type);
    if (type.equals("hats")){
      theHatsButton.isSelected = true;
    } else if (type.equals("glasses")) {
      theGlassesButton.isSelected = true;
    } else if (type.equals("shirts")) {
      theShirtsButton.isSelected = true;
    } else if (type.equals("pants")) {
      thePantsButton.isSelected = true;
    } else if (type.equals("shoes")) {
      theShoesButton.isSelected = true;
    } else if (type.equals("misc")) {
      theMiscButton.isSelected = true;
    }
    countdown = 0;
    thePet.catAvatar = loadImage("catNorm.png");
  }
}
void gameItemChange(int xPos, int yPos, String type, int typeNum) {
  if (dist(mouseX, mouseY, xPos, yPos) < 35) {
    theGame.selectedGame = typeNum;
    removeOtherSelectionsGame(type);
    if (type.equals("flappyBird")){
      theFlappyBirdButton.isSelected = true;
    } 
    countdown = 0;
    thePet.catAvatar = loadImage("catNorm.png");
  }
}

void removeOtherSelectionsCloset(String changeTo) {
  if (!changeTo.equals("hats")) {
    theHatsButton.isSelected = false;
  }
  if (!changeTo.equals("glasses")) {
    theGlassesButton.isSelected = false;
  }
  if (!changeTo.equals("shirts")) {
    theShirtsButton.isSelected = false;
  }
  if (!changeTo.equals("pants")) {
    thePantsButton.isSelected = false;
  }
  if (!changeTo.equals("shoes")) {
    theShoesButton.isSelected = false;
  }
  if (!changeTo.equals("misc")) {
    theMiscButton.isSelected = false;
  }
  if (dist(mouseX, mouseY, 930, 650) < 35) {
    room = game;
    countdown = 0;
    thePet.catAvatar = loadImage("catNorm.png");
  }
}

void removeOtherSelectionsGame(String changeTo) {
  if (!changeTo.equals("flappyBird")) {
    theFlappyBirdButton.isSelected = false;
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
void keyPressed() {
  if (theFlappyBirdButton.isSelected) {
    if (key == ' ') {
      theFlappyBirdButton.on = true;
      theFlappyBirdButton.y -= 55;
    }
    if (key == BACKSPACE) {
      theFlappyBirdButton.on = false;
    }
  }
}
