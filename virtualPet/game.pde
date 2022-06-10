public class game {
  int selectedGame = -1;
  final int flappyBird = 0;
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
      fill(#D3CE37);
    } else {
      fill(#FCF873);
    }
    circle(xPos, yPos, 70);
  }
}

public class flappyBirdButton extends typeButton {
  public flappyBirdButton() {
    itemType = 0;
    isSelected = false;
    iconInside = loadImage("gamesIcon.png");
    iconInside.resize(55, 42);
  }
  void display(int xPos, int yPos) {
    super.display(xPos, yPos);
    image(iconInside, xPos-25, yPos-25);
    if (isSelected) {
      PImage flappyBirdBackground = loadImage("flappyBirdBackground.jpg"); 
      flappyBirdBackground.resize(775, 510); 
      image(flappyBirdBackground, 110, 80);
    }
  }
}
