public class pet {
  String[] idleActions;
  boolean isBusy;
  float xPos;
  float yPos;
  PImage catAvatar;
  
  public pet() {
    xPos = width/2;
    yPos = height/2;
    catAvatar = loadImage("catNorm.png");
    isBusy = false;
    idleActions = new String[] {}; //add the idle actions later
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
  
  void action(String actionType) {
    
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
  }
}
