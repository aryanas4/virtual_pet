public class closet {
  int selectedItemType = -1;
  final int HATS = 0;
  final int GLASSES = 1;
  final int SHIRTS = 2;
  final int PANTS = 3;
  final int SHOES = 4;
  final int MISC = 5;
  ArrayList<closetItem> hatsList;
  int currentHatIndex;
  ArrayList<closetItem> glassesList;
  int currentGlassesIndex;
  ArrayList<closetItem> shirtsList;
  int currentShirtIndex;
  ArrayList<closetItem> pantsList;
  int currentPantsIndex;
  ArrayList<closetItem> shoesList;
  int currentShoesIndex;
  ArrayList<closetItem> miscList;
  int currentMiscIndex;
  closetItem currentSelectedItem;
  /*for each of the animations we have, there will be separate images that go on top of
  the cat of just the closet item so that we can have several items on at once
  this means there will be animation frames of just the closet item moving*/
  public closet() { //set up all the items that are in the closet
    //hats:
    hatsList = new ArrayList<closetItem>();
    currentHatIndex = 0;
    hatsList.add(new closetItem(HATS, "redHat.png", 10, "red"));
    hatsList.get(0).itemImg.resize(80, 54); //resize hat0
    hatsList.add(new closetItem(HATS, "yellowHat.png", 10, "yellow"));
    hatsList.get(1).itemImg.resize(80, 54); //resize hat1
    hatsList.add(new closetItem(HATS, "blueHat.png", 10, "blue"));
    hatsList.get(2).itemImg.resize(80, 54); //resize
    hatsList.add(new closetItem(HATS, "redYellowHat.png", 20, "redYellow"));
    hatsList.get(3).itemImg.resize(80, 54); //resize
    //glasses:
    glassesList = new ArrayList<closetItem>();
    currentGlassesIndex = 0;
    glassesList.add(new closetItem(GLASSES, "glassesIcon.png", 15, "normal"));
    glassesList.get(0).itemImg.resize(100, 36);
    glassesList.add(new closetItem(GLASSES, "sunglasses.png", 35, "sun"));
    glassesList.get(1).itemImg.resize(100, 36);
    //shirts:
    shirtsList = new ArrayList<closetItem>();
    currentShirtIndex = 0;
    shirtsList.add(new closetItem(SHIRTS, "shirtIcon.png", 25, "red"));
    shirtsList.get(0).itemImg.resize(90, 82);
    shirtsList.add(new closetItem(SHIRTS, "whiteShirt.png", 25, "white"));
    shirtsList.get(1).itemImg.resize(90, 82);
    shirtsList.add(new closetItem(SHIRTS, "blueShirt.png", 25, "blue"));
    shirtsList.get(2).itemImg.resize(90, 82);
    shirtsList.add(new closetItem(SHIRTS, "greenShirt.png", 25, "green"));
    shirtsList.get(3).itemImg.resize(90, 82);
    shirtsList.add(new closetItem(SHIRTS, "pinkShirt.png", 25, "pink"));
    shirtsList.get(4).itemImg.resize(90, 82);
    shirtsList.add(new closetItem(SHIRTS, "smileyShirt.png", 30, "smiley"));
    shirtsList.get(5).itemImg.resize(90, 82);
    shirtsList.add(new closetItem(SHIRTS, "sarcasmShirt.png", 35, "sarcasm"));
    shirtsList.get(6).itemImg.resize(90, 82);
    //pants:
    pantsList = new ArrayList<closetItem>();
    currentPantsIndex = 0;
    pantsList.add(new closetItem(PANTS, "pantsIcon.png", 30, "blue"));
    pantsList.get(0).itemImg.resize(47, 85);
    //shoes:
    shoesList = new ArrayList<closetItem>();
    currentShoesIndex = 0;
    shoesList.add(new closetItem(SHOES, "shoesIcon.png", 50, "green"));
    shoesList.get(0).itemImg.resize(73, 60);
    //misc:
    miscList = new ArrayList<closetItem>();
    currentMiscIndex = 0;
  }
  void display() {
    //display the yellow box in which the items will be displayed:
    if (selectedItemType != -1) {
      fill(#FCFBCF);
      rect(1000/5, 800/6, 600, 150);
      fill(#284FA0);
      triangle(240, 216, 260, 236, 260, 196);
      triangle(1000-240, 216, 1000-260, 236, 1000-260, 196);
      //if (currentSelectedItem != null && !currentSelectedItem.wasBought) currentSelectedItem.justTryingOn = true;
    }
    if (selectedItemType == HATS) {
      currentSelectedItem = hatsList.get(currentHatIndex);
      closetItem currentHat = hatsList.get(currentHatIndex);
      currentHat.display();
      thePet.theHat = theCloset.currentSelectedItem;
    }
    if (selectedItemType == GLASSES) {
      currentSelectedItem = glassesList.get(currentGlassesIndex);
      closetItem currentGlasses = glassesList.get(currentGlassesIndex);
      currentGlasses.display();
      thePet.theGlasses = theCloset.currentSelectedItem;
    }
    if (selectedItemType == SHIRTS) {
      currentSelectedItem = shirtsList.get(currentShirtIndex);
      closetItem currentShirt = shirtsList.get(currentShirtIndex);
      currentShirt.display();
      thePet.theShirt = theCloset.currentSelectedItem;
    }
    if (selectedItemType == PANTS) {
      currentSelectedItem = pantsList.get(currentPantsIndex);
      closetItem currentPants = pantsList.get(currentPantsIndex);
      currentPants.display();
      thePet.thePants = theCloset.currentSelectedItem;
    }
    if (selectedItemType == SHOES) {
      currentSelectedItem = shoesList.get(currentShoesIndex);
      closetItem currentShoes = shoesList.get(currentShoesIndex);
      currentShoes.display();
      thePet.theShoes = theCloset.currentSelectedItem;
    }
    //REMINDER: add the misc one
  }
}

public class closetButton {
  PImage hanger;
  public closetButton() {
    hanger = loadImage("clothesHangerIcon.png");
    hanger.resize(55, 42);
  }
  void display() {
    noStroke();
    fill(#B6F7E8);
    circle(930, 730, 70);
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

public class clearAllButton {
  void display() {
    stroke(255);
    fill(#E87373);
    circle(630, 607, 70);
    fill(0);
    textSize(10);
    text("CLEAR", 630, 610);
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

public class closetItem {
  boolean wasBought;
  boolean justTryingOn;
  PImage itemImg;
  int itemType;
  int price;
  String identifier;
  public closetItem(int numType, String imgName, int setCost, String label) {
    itemType = numType;
    itemImg = loadImage(imgName);
    price = setCost;
    identifier = label;
  }
  void display() {
    image(itemImg, 500-itemImg.width/2, 216-itemImg.height/2);
    if (!wasBought) {
      if (level.coin - theCloset.currentSelectedItem.price >= 0) {
        fill(#D6B23A);
      } else {
        fill(#E56868); //button is red if the player cannot afford the item
      }
      circle(300, 250, 50);
      fill(0);
      textSize(17);
      text(price, 290, 255);
      textSize(10);
      text(" coins", 310, 260);
    }
  }
}
