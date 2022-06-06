public class closet {
  int selectedItemType = -1;
  final int HATS = 0;
  final int GLASSES = 1;
  final int SHRITS = 2;
  final int PANTS = 3;
  final int SHOES = 4;
  final int MISC = 5;
  /*for each of the animations we have, there will be separate images that go on top of
  the cat of just the closet item so that we can have several items on at once
  this means there will be animation frames of just the closet item moving*/
  void display() {
    if (selectedItemType != -1) {
      fill(#FCFBCF);
      rect(1000/5, 800/6, 600, 150);
      fill(#284FA0);
      triangle(240, 216, 260, 236, 260, 196); //for clicking use the point 250,216 with dist < 10
      triangle(1000-240, 216, 1000-260, 236, 1000-260, 196); //for clicking use point 750, 216 with dist<10
    }
  }
}

public class closetButton {
  void display() {
    noStroke();
    fill(#B6F7E8);
    PImage hanger = loadImage("clothesHangerIcon.png");
    circle(930, 730, 70);
    hanger.resize(55, 42);
    image(hanger, 930-28, 730-27);
  }
}

public abstract class typeButton {
  int itemType;
  boolean isSelected;
  PImage iconInside;
  void display(int xPos, int yPos) {
    stroke(255);
    if (isSelected) {
      fill(#D3CE37);
    } else {
      fill(#FCF873);
    }
    circle(xPos, yPos, 70);
  }
}

public class hatsButton extends typeButton {
  public hatsButton() {
    itemType = 0;
    isSelected = false;
    iconInside = loadImage("hatIcon.png");
    iconInside.resize(50, 37);
  }
  void display(int xPos, int yPos) {
    super.display(xPos, yPos);
    image(iconInside, xPos-25, yPos-25);
  }
}

public class glassesButton extends typeButton {
  public glassesButton() {
    itemType = 1;
    isSelected = false;
    iconInside = loadImage("glassesIcon.png");
    iconInside.resize(50, 18);
  }
  void display(int xPos, int yPos) {
    super.display(xPos, yPos);
    image(iconInside, xPos-25, yPos-10);
  }
}

public class shirtsButton extends typeButton {
  public shirtsButton() {
    itemType = 2;
    isSelected = false;
    iconInside = loadImage("shirtIcon.png");
    iconInside.resize(50, 42);
  }
  void display(int xPos, int yPos) {
    super.display(xPos, yPos);
    image(iconInside, xPos-25, yPos-23);
  }
}

public class pantsButton extends typeButton {
  public pantsButton() {
    itemType = 3;
    isSelected = false;
    iconInside = loadImage("pantsIcon.png");
    iconInside.resize(27, 57);
  }
  void display(int xPos, int yPos) {
    super.display(xPos, yPos);
    image(iconInside, xPos-13, yPos-25);
  }
}

public class shoesButton extends typeButton {
  public shoesButton() {
    itemType = 4;
    isSelected = false;
    iconInside = loadImage("shoesIcon.png");
    iconInside.resize(53, 40);
  }
  void display(int xPos, int yPos) {
    super.display(xPos, yPos);
    image(iconInside, xPos-25, yPos-22);
  }
}

public class miscButton extends typeButton {
  public miscButton() {
    itemType = 5;
    isSelected = false;
  }
  void display(int xPos, int yPos) {
    super.display(xPos, yPos);
    fill(0);
    textSize(35);
    text("...", xPos, yPos);
  }
}

public abstract class closetItem {
  boolean wasBought;
  PImage itemImg;
  int itemType;
  void display(int xPos, int yPos, int currentType) {
    if (currentType == itemType) {
      image(itemImg, xPos, yPos);
    }
  }
}
