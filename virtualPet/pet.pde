public class pet {
  String[] idleActions;
  String currentIdleAction = "";
  boolean isBusy;
  float xPos;
  float yPos;
  PImage catAvatar;
  PImage hatSelection;
  closetItem theHat;
  PImage glassesSelection;
  closetItem theGlasses;
  PImage shirtSelection;
  closetItem theShirt;
  PImage pantsSelection;
  closetItem thePants;
  PImage shoesSelection;
  closetItem theShoes;
  PImage miscSelection;
  closetItem theMisc;
  public pet() {
    xPos = width/2-250;
    yPos = height/2-250;
    catAvatar = loadImage("catNorm.png");
    isBusy = false;
    idleActions = new String[] {"reachUp", "circle"};
  }
  
  void doIdleAction() {
    if (!isBusy && (int)(Math.random()*100) > 98) { //not busy and 1% chance
      int randomNum = (int)(Math.random()*(idleActions.length)); //pick a random number
      currentIdleAction = idleActions[randomNum];
      countdown = 20; //set the countdown to start the animation (in virtualPet draw() )
    }
  }
  
  void blinkBreathe() {
    if (!isBusy) {
      setClothingToStill();
      if ((int)(Math.random()*100) > 92) { //blink at random times
        catAvatar = loadImage("catBlink.png");
      } else {
        catAvatar = loadImage("catNorm.png");
      }
    }
  }
  

  
  void display() {
    image(catAvatar, xPos, yPos, 500, 500);
    blinkBreathe();
    doIdleAction();
    if (theHat != null && theHat.identifier != null) {
      //hatSelection = loadImage(theHat.identifier + "HatStill.png");
      if ((room == closet && theCloset.selectedItemType == 0) || theHat.wasBought) { //display if trying on or bought
        image(hatSelection, xPos, yPos, 500, 500);
      }
    }
    if (theGlasses != null && theGlasses.identifier != null) {
      //glassesSelection = loadImage(theGlasses.identifier + "GlassesStill.png");
      if ((room == closet && theCloset.selectedItemType == 1) || theGlasses.wasBought) {
        image(glassesSelection, xPos, yPos, 500, 500);
      }
    }
    if (theShirt != null && theShirt.identifier != null) {
      //shirtSelection = loadImage(theShirt.identifier + "ShirtStill.png");
      if ((room == closet && theCloset.selectedItemType == 2) || theShirt.wasBought) {
        image(shirtSelection, xPos, yPos, 500, 500);
      }
    }
    if (thePants != null && thePants.identifier != null) {
      //pantsSelection = loadImage(thePants.identifier + "PantsStill.png");
      if ((room == closet && theCloset.selectedItemType == 3) || thePants.wasBought) {
        image(pantsSelection, xPos, yPos, 500, 500);
      }
    }
    if (theShoes != null && theShoes.identifier != null) {
      //shoesSelection = loadImage(theShoes.identifier + "ShoesStill.png");
      if ((room == closet && theCloset.selectedItemType == 4) || theShoes.wasBought) {
        image(shoesSelection, xPos, yPos, 500, 500);
      }
    }
    if (theMisc != null && theMisc.identifier != null) {
      //miscSelection = loadImage(theMisc.identifier + "MiscStill.png");
      if ((room == closet && theCloset.selectedItemType == 5) || theMisc.wasBought) {
        image(miscSelection, xPos, yPos, 500, 500);
      }
    }
  }
}
