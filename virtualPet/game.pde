public class game {
  int selectedGame;
  final int game1 = 0;
  final int game2 = 1;
  final int game3 = 2;
}

public class gameButton {
  void display() {
    noStroke();
    fill(#B6F7E8);
    PImage game = loadImage("gamesIcon.png"); 
    circle(930, 650, 70);
    game.resize(55, 42);
    image(game, 930-27, 650-22);
  }
}

public abstract class gameTypeButton {
  int itemType;
  boolean isSelected;
  PImage iconInside;
  void display(int xPos, int yPos) {
    stroke(255);
    if (isSelected) {
      fill(#8379E3);
    } else {
      fill(#8E1313);
    }
    circle(xPos, yPos, 70);
    image(iconInside, xPos-27, yPos-22);
  }
}

public class game1Button extends typeButton {
  public game1Button() {
    itemType = 0;
    isSelected = false;
    iconInside = loadImage("gamesIcon.png");
    iconInside.resize(55, 42);
  }
}
