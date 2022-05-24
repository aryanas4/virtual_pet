public abstract class mood {
  float percentage = 1;
  float decreaseRate = 0.1;
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
  
}
public class happiness extends mood {
  void display() {
    
  }
}
public class hunger extends mood {
  void display() {
    
  }
}
public class cleanliness extends mood {
  void display() {
    
  }
}
public class awakeness extends mood {
  void display() {
    
  }
}
