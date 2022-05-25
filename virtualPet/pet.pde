public class pet {
  String[] idleActions;
  boolean isBusy;
  float xPos;
  float yPos;
  PImage catAvatar;
  int countdown = 0;
  
  public pet() {
    xPos = width/2;
    yPos = height/2;
    catAvatar = loadImage("catNorm.png");
    isBusy = false;
    idleActions = new String[] {"reachUp"}; //add the idle actions later
  }
  
  void doIdleAction() {
    if (!isBusy && (int)(Math.random()*2) > 0) { //not busy and 50% chance
      int randomNum = (int)(Math.random()*(idleActions.length)); //pick a random number
      action(idleActions[randomNum]); //pick the random action, call action
    }
  }
  
  void blinkBreathe() {
    if (!isBusy) {
      if ((int)(Math.random()*100) > 92) { //blink at random times
        catAvatar = loadImage("catBlink.png");
      } else {
        catAvatar = loadImage("catNorm.png");
      }
    }
  }
  
  void draw() {
    if (countdown > 0) {
      countdown--;
      isBusy = true; //if we're using timer, that means the pet is likely doing something
    }
  }
  
  void action(String actionType) { //WHY DOESN't thing workkkk... REMINDER FOR SELF
    isBusy = true;
    if (actionType.equals("reachUp")) {
      countdown = 120; //this keeps getting called?? maybe because it's in the display() which is in draw()
      catAvatar = loadImage("catReach1.png");
      while (countdown > 0) {
        if (countdown == 60) {
          catAvatar = loadImage("catReach2.png");
        }
        if (countdown == 1) {
          catAvatar = loadImage("catNorm.png");
        }
        print("reaching"); //for testing
        print(countdown); //for testing
        print(isBusy); //for testing
      }
      /*
      int midSec;
      if (second() == 59) {
        midSec = 0;
      } else {
        midSec = second()+1;
      }
      boolean still1 = true; //REMINDER: left off here
      while (second() != midSec) {
        catAvatar = loadImage("catReach1.png");
      }
      int endSec;
      if (second() == 59) {
        endSec = 0;
      } else {
        endSec = second()+1;
      }
      while (second() != endSec) {
        catAvatar = loadImage("catReach2.png");
      } 
      */
    }
    //catAvatar = loadImage("catNorm.png");
    //isBusy = false;
  }
  
  void mouseClicked() {
    if (Math.abs(mouseX - xPos) < 20 && Math.abs(mouseY - yPos) < 20) {//edit the exact amount later
      clicked();
    }
  }
  
  void clicked() { //cat gets punched/hit
    //upload images/animation of cat getting hit
  }
  
  void display() {
    image(catAvatar, xPos-250, yPos-250, 500, 500);
    blinkBreathe();
    doIdleAction();
  }
}
