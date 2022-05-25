public class pet {
  String[] idleActions;
  String currentIdleAction = "";
  boolean isBusy;
  float xPos;
  float yPos;
  PImage catAvatar;
  
  public pet() {
    xPos = width/2;
    yPos = height/2;
    catAvatar = loadImage("catNorm.png");
    isBusy = false;
    idleActions = new String[] {"reachUp"}; //REMINDER: add more idle actions later
  }
  
  void doIdleAction() {
    if (!isBusy && (int)(Math.random()*100) > 97) { //not busy and 2% chance
      int randomNum = (int)(Math.random()*(idleActions.length)); //pick a random number
      currentIdleAction = idleActions[randomNum];
      countdown = 100; //set the countdown to start the animation (in virtualPet draw() )
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
