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
    } //REMINDER: do we need an else so that the image isn't always there?
  }
  void clicked(boolean isUsed) {
    if(!isUsed) {
      countdown = 80; //set countdown for the animation
    }
  }
}

public class toy extends clickable {
  public toy(String imageName, int x, int y, int w, int h) {
    super(imageName, x, y, w, h);
    whichRoom = 0;
  }
}

public class food extends clickable {
  public food(String imageName, int x, int y, int w, int h) {
    super(imageName, x, y, w, h);
    whichRoom = 1;
  }
}

public class cleaner extends clickable {
  public cleaner(String imageName, int x, int y, int w, int h) {
    super(imageName, x, y, w, h);
    whichRoom = 2;
  }
}

public class lights extends clickable {
  public lights(String imageName, int x, int y, int w, int h) {
    super(imageName, x, y, w, h);
    whichRoom = 3;
  }
}
