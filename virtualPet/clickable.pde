public abstract class clickable {
  int whichRoom;
  PImage objectImg;
  int xPos;
  int yPos;
  boolean beingUsed;
  public clickable(String imageName, int x, int y) {
    objectImg = loadImage(imageName);
    xPos = x;
    yPos = y;
    beingUsed = false;
  }
  //have the clicked animation in virtualPet's draw() -- if clicked, its being used, animation, change moods
  void display(int currentRoom) {
    if (currentRoom == whichRoom) {
      image(objectImg, xPos, yPos);
    } //REMINDER: do we need an else so that the image isn't always there?
  }
}

public class toy extends clickable {
  public toy(String imageName, int x, int y) {
    super(imageName, x, y);
    whichRoom = 0;
  }
}

public class food extends clickable {
  public food(String imageName, int x, int y) {
    super(imageName, x, y);
    whichRoom = 1;
  }
}

public class cleaner extends clickable {
  public cleaner(String imageName, int x, int y) {
    super(imageName, x, y);
    whichRoom = 2;
  }
}

public class lights extends clickable {
  public lights(String imageName, int x, int y) {
    super(imageName, x, y);
    whichRoom = 3;
  }
}
