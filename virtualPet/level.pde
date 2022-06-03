public class level {
  int coin;
  int levelNum;
  float xpPercent = 0.05;
  public level() {
   coin = 0;
   levelNum = 1;
  }
  void addCoins(int amount) {
    coin += amount;
  }
  void increase(float amount) {
    if (xpPercent + amount > 1) {
      levelNum++;
      xpPercent = 0; //change level
    }
    else {
      xpPercent += amount;
    }
  }
  void display() {
    //level bar
    fill(255);
    rect(110, 50, 200, 25, 15); //level bar
    rect(770, 50, 150, 50, 15); //coin bar
    fill(233,173,3); //coin color
    circle(760, 50, 60); //coin icon
    fill(243,199,13);
    circle(760, 50, 50); //coin icon
    fill(0, 255, 0);
    rect(110, 50, xpPercent*200, 25, 15); //fill level bar based on %
    fill(245,245,220);
    circle(65, 60, 100);
    fill(255);
    circle(65, 60, 80); //circle displaying level number
    fill(0);
    textSize(45);
    textAlign(CENTER);
    text(levelNum, 64, 74); //display level number
    textSize(15);
    //fill(255);
    text("COIN", 760, 57);
    textSize(30);
    text(coin, 845, 85);
  }
}
