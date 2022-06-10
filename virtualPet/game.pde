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
  PImage flappyBirdBackground = loadImage("flappyBirdBackground.jpg"); 
  PImage flappyBirdLogo = loadImage("FlappyBirdLogo.png"); 
  PImage bird = loadImage("flappyBird.png"); 
  PImage pipe = loadImage("flappyBirdPipe.png"); 
  boolean on = false;
  int x = -200;
  int score = 0;
  int highScore = 0;
  int v = 0;
  int y;
  public flappyBirdButton() {
    itemType = 0;
    isSelected = false;
    iconInside = loadImage("flappyBird.png");
    iconInside.resize(60, 42);
  }
  void display(int xPos, int yPos) {
    super.display(xPos, yPos);
    image(iconInside, xPos-25, yPos-25);
    if (isSelected && !on) {
      flappyBirdBackground.resize(775, 510); 
      image(flappyBirdBackground, 110, 80);
      flappyBirdLogo.resize(400, 100); 
      image(flappyBirdLogo, 450, 130);
      bird.resize(70, 50); 
      image(bird, 110, 400);
      pipe.resize(450, 540); 
      image(pipe, 110, 78);
      //line(250, 500, 400, 500);
      //border around TV:
      noFill();
      stroke(0);
      strokeWeight(12);
      rect(110, 80, 775, 510);
      /* add flappyBird to one spot (only allowing jump up and down)
      add pipes (move left constantly and disappear when off screen)
      if bird hits pipe - stop game
      add start game button (key press ' ')
      draw 2 different rectangles to represent where the bird can fly through,
      if bird goes past the rectangule x,y - it dies
      2 types of pipes up and down (2 rects)
      */
      strokeWeight(1);
    }
  }
}
