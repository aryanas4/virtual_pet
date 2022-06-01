public class level {
  int coin;
  int levelNum;
  float xpPercent;
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
    circle(100, 100, 150);
  }
}
