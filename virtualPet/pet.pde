public class pet {
  String[] idleActions;
  String currentIdleAction = "";
  boolean isBusy;
  float xPos;
  float yPos;
  PImage catAvatar;
  PImage hatSelection;
  PImage glassesSelection;
  PImage shirtSelection;
  PImage pantsSelection;
  PImage shoesSelection;
  PImage miscSelection;
  
  public pet() {
    xPos = width/2-250;
    yPos = height/2-250;
    catAvatar = loadImage("catNorm.png");
    isBusy = false;
    idleActions = new String[] {"reachUp", "circle"}; //REMINDER: add more idle actions later
  }
  
  void doIdleAction() {
    if (!isBusy && (int)(Math.random()*100) > 98) { //not busy and 1% chance
      int randomNum = (int)(Math.random()*(idleActions.length)); //pick a random number
      currentIdleAction = idleActions[randomNum];
      countdown = 30; //set the countdown to start the animation (in virtualPet draw() )
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
  
  
  void display() {
    if (hatSelection != null) {
      image(hatSelection, xPos, yPos, 500, 500);
    }
    if (glassesSelection != null) {
      image(glassesSelection, xPos, yPos, 500, 500);
    }
    if (shirtSelection != null) {
      image(hatSelection, xPos, yPos, 500, 500);
    }
    if (pantsSelection != null) {
      image(hatSelection, xPos, yPos, 500, 500);
    }
    if (shoesSelection != null) {
      image(hatSelection, xPos, yPos, 500, 500);
    }
    if (miscSelection != null) {
      image(hatSelection, xPos, yPos, 500, 500);
    }
    image(catAvatar, xPos, yPos, 500, 500);
    blinkBreathe();
    doIdleAction();
  }
}
