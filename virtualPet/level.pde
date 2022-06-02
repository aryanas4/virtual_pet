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
    fill(255);
    rect(100, 50, 200, 25); //level bar
    fill(0, 255, 0);
    rect(100, 50, xpPercent*200, 25); //fill level bar based on %
    fill(245,245,220);
    circle(65, 60, 80); //circle displaying level number
    fill(0);
    textSize(30);
    text(levelNum, 55, 68); //level number 
  }
}
