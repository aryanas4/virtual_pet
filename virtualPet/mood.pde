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
    noFill();
    arc(100, 705, 70, 60, 0, PI); // smile
    fill(0);
    ellipse(85, 695, 10, 15); //left eye
    ellipse(115, 695, 10, 15); //right eye
    fill(255);
  }
}
public class hunger extends mood {
  void display() {
    circle(300, 700, 100);
    noFill();
    strokeWeight(4);
    line(315, 680, 315, 730);
    arc(315, 680, 20, 40, 0, PI);
    fill(0);
    strokeWeight(1);
    arc(315, 690, 20, 20, 0, PI);
    fill(255);
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
