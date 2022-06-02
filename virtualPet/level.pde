public class level {
  int coin;
  int levelNum;
  float xpPercent = 0.2;
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
    rect(50, 50, 500, 50);
    fill(0, 255, 0);
    rect(50, 50, xpPercent*100, 50);
  }
}
