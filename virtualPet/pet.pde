public class pet {
  String[] idleActions;
  boolean isBusy;
  float xPos;
  float yPos;
  
  void doIdleAction() {
    if (!isBusy && (int)(Math.random()*2) > 0) { //not busy and 50% chance
      int randomNum = (int)(Math.random()*(idleActions.length)); //pick a random number
      action(idleActions[randomNum]); //pick the random action, call action
    }
  }
  
  void blinkBreathe() {
    
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
    //upload image of cat resting
  }
}
