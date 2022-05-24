public abstract class mood {
  float percentage = 1;
  float decreaseRate = 0.01;
  boolean selectedRoom;
  abstract void display();
  void decrease() {
    percentage *= (1 - decreaseRate);
  }
  void decrease(float amount) {
    percentage -= amount;
  }
  void increase(float amount) {
    percentage += amount;
  }
  float getPercentage() {
    return percentage;
  }
  void setPercentage(float amount) {
    percentage = amount;
  }
  boolean isGoodLevel() {
    if (percentage > 0.5) {
      return true;
    }
    return false;
  }
}
public class happiness extends mood {
  void display() {
    circle(100, 700, 100);
  }
}
public class hunger extends mood {
  void display() {
    circle(300, 700, 100);
  }
}
public class cleanliness extends mood {
  void display() {
    circle(500, 700, 100);
  }
}
public class awakeness extends mood {
  void display() {
    circle(700, 700, 100);
  }
}
