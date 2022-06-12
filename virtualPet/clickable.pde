public abstract class clickable {
  int whichRoom;
  PImage objectImg;
  int xPos;
  int yPos;
  int imgWidth;
  int imgHeight;
  boolean beingUsed;
  public clickable(String imageName, int x, int y, int w, int h) {
    objectImg = loadImage(imageName);
    xPos = x;
    yPos = y;
    imgWidth = w;
    imgHeight = h;
    beingUsed = false;
  }
  //have the clicked animation in virtualPet's draw() -- if clicked, its being used, animation, change moods
  void display(int currentRoom) {
    if (currentRoom == whichRoom) {
      image(objectImg, xPos, yPos, imgWidth, imgHeight);
    }
  }
}

public class toy extends clickable {
  public toy(String imageName, int x, int y, int w, int h) {
    super(imageName, x, y, w, h);
    whichRoom = 0;
  }
  void clicked(boolean isUsed) {
    if(!isUsed) {
      thePet.currentIdleAction = "";
      countdown = 40; //set countdown for the animation
      a.increase(0.03);
      d.decrease(0.02);
    }
  }
}

public class food extends clickable {
  public food(String imageName, int x, int y, int w, int h) {
    super(imageName, x, y, w, h);
    whichRoom = 1;
  }
  void clicked(boolean isUsed) {
    if(!isUsed) {
      thePet.currentIdleAction = "";
      countdown = 50; //set countdown for the animation
      b.increase(0.03);
      c.decrease(0.02);
    }
  }
}

public class cleaner extends clickable {
  public cleaner(String imageName, int x, int y, int w, int h) {
    super(imageName, x, y, w, h);
    whichRoom = 2;
  }
  void clicked(boolean isUsed) {
    if(!isUsed) {
      thePet.currentIdleAction = "";
      countdown = 50; //set countdown for the animation
      c.increase(0.03);
      b.decrease(0.02);
    }
  }
}

public class lights extends clickable {
  public lights(String imageName, int x, int y, int w, int h) {
    super(imageName, x, y, w, h);
    whichRoom = 3;
  }
  void clicked(boolean isUsed) {
    if(!isUsed) {
      thePet.currentIdleAction = "";
      countdown = 50; //set countdown for the animation
      d.increase(0.03);
      b.decrease(0.02);
    }
  }
}
