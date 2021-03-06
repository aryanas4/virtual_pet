public abstract class mood {
  float percentage = 1;
  float decreaseRate = 0.01;
  boolean selectedRoom;
  color Color;
  abstract void display();
  void decrease() {
    percentage *= (1 - decreaseRate);
  }
  void decrease(float amount) {
    if (percentage - amount > 0) {
      percentage -= amount;
    } else {
      percentage = 0;
    }
  }
  void increase(float amount) {
    if (percentage+amount < 1) {
      percentage += amount;
    } else {
      percentage = 1;
    }
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
  void getColor() {
    if (percentage > .5) {
      Color = color(0, 255, 0, 100); //green
    }
    else if (percentage > .1) {
      Color = color(255, 255, 0, 100); //yellow
    }
    else {
      Color = color(255, 0, 0, 100); //red
    }
  }
}
public class happiness extends mood {
  void display() {
    getColor(); 
    fill(Color);
    circle(200, 700, 100); //fill circle with color
    fill(255);
    noStroke();
    //rect(150, 650, 100, 100 - getPercentage()*100); //decrease the circle fill
    arc(200, 700, 100, 100, 0, radians((1-getPercentage())*360), PIE);
    stroke(0);
    noFill();
    circle(200, 700, 100); //circle line around
    arc(200, 705, 70, 60, 0, PI); // smile
    fill(0);
    ellipse(185, 695, 10, 15); //left eye
    ellipse(215, 695, 10, 15); //right eye
  }
}
public class hunger extends mood {
  void display() {
    getColor(); 
    fill(Color);
    circle(400, 700, 100); //fill circle with color
    fill(255);
    noStroke();
    //rect(350, 650, 100, 100 - getPercentage()*100); //decrease the circle fill
    arc(400, 700, 100, 100, 0, radians((1-getPercentage())*360), PIE);
    stroke(0);
    noFill();
    circle(400, 700, 100); //circle line around
    
    strokeWeight(4);
    line(415, 680, 415, 730);
    line(390, 680, 390, 730);
    arc(415, 680, 20, 40, 0, PI);
    fill(0);
    strokeWeight(1);
    arc(391, 706, 20, 55, PI, PI+HALF_PI);
    arc(415, 690, 18, 20, 0, PI);
  }
}
public class cleanliness extends mood {
  void display() {
    getColor(); 
    fill(Color);
    circle(600, 700, 100); //fill circle with color
    fill(255);
    noStroke();
    //rect(550, 650, 100, 100 - getPercentage()*100); //decrease the circle fill
    arc(600, 700, 100, 100, 0, radians((1-getPercentage())*360), PIE);
    stroke(0);
    noFill();
    circle(600, 700, 100); //circle line around
    
    fill(0);
    arc(615, 700, 25, 60, PI, PI+PI); //shower head
    rect(612, 660, 6, 20);
    rect(612, 660, 21, 6, 0,100000,0,0);
    line(615,730,615,740); //water lines
    line(610,718,610,728);
    line(620,715,620,725);
    line(606,732,606,742);
    line(605,705,605,715);
    line(625,703,625,713);
    line(615,704,615,714);
    line(625,728,625,738);
  }
}
public class awakeness extends mood {
  void display() {
    getColor(); 
    fill(Color);
    circle(800, 700, 100); //fill circle with color 
    fill(255);
    noStroke();
    //rect(750, 650, 100, 100 - getPercentage()*100); //decrease the circle fill
    arc(800, 700, 100, 100, 0, radians((1-getPercentage())*360), PIE);
    stroke(0);
    noFill();
    circle(800, 700, 100); //circle line around
    
    fill(0);
    textSize(35);
    text("Z", 775, 700);
    textSize(25);
    text("Z", 805, 710);
    textSize(15);
    text("Z", 825, 720);
  }
}
