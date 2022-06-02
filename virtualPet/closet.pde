public class closet {
  int selectedItemType;
  final int HATS = 0;
  final int GLASSES = 1;
  final int SHRITS = 2;
  final int PANTS = 3;
  final int SHOES = 4;
  final int MISC = 5;
  /*for each of the animations we have, there will be separate images that go on top of
  the cat of just the closet item so that we can have several items on at once
  this means there will be animation frames of just the closet item moving*/
}

public class closetButton {
  void display() {
    noStroke();
    fill(#B6F7E8);
    //PImage hanger = loadImage(""); //REMINDER TO ADD THIS IMAGE!!!
    circle(930, 70, 70);
    //image(hanger, 930-35, 70-35);
  }
}

public abstract class typeButton {
  int itemType;
  boolean isSelected;
  PImage iconInside;
  void display(int xPos, int yPos) {
    if (isSelected) {
      fill(#8379E3);
    } else {
      fill(#BCB6F7);
    }
    circle(xPos, yPos, 70);
    image(iconInside, xPos-35, yPos-35);
  }
}

public class hatsButton extends typeButton {
  public hatsButton() {
    itemType = 0;
    isSelected = false;
    //iconInside = loadImage(""); //REMINDER TO ADD THIS!!
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
