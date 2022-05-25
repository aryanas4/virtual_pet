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
    circle(200, 700, 100);
    noFill();
    arc(200, 705, 70, 60, 0, PI); // smile
    fill(0);
    ellipse(185, 695, 10, 15); //left eye
    ellipse(215, 695, 10, 15); //right eye
    fill(255);
  }
}
public class hunger extends mood {
  void display() {
    circle(400, 700, 100);
    noFill();
    strokeWeight(4);
    line(415, 680, 415, 730);
    line(390, 680, 390, 730);
    arc(415, 680, 20, 40, 0, PI);
    fill(0);
    strokeWeight(1);
    arc(391, 706, 20, 55, PI, PI+HALF_PI);
    arc(415, 690, 18, 20, 0, PI);
    fill(255);
  }
}
public class cleanliness extends mood {
  void display() {
    circle(600, 700, 100);
    fill(0);
    arc(615, 690, 25, 60, PI, PI+PI);
    fill(255);
  }
}
public class awakeness extends mood {
  void display() {
    circle(800, 700, 100);
  }
}
