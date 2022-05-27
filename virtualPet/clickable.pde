public abstract class clickable {
  int whichRoom;
  PImage objectImg;
  int xPos;
  int yPos;
  void clicked() {
    //maybe we don't need this; just like the pet
  }
  void display(int currentRoom) {
    if (currentRoom == whichRoom) {
      image(objectImg, xPos, yPos);
    }
  }
}

public class toy extends clickable {
  public toy(String imageName, int x, int y) {
    whichRoom = 0;
    objectImg = loadImage(imageName);
    xPos = x;
    yPos = y;
  }
}
