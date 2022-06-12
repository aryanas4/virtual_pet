public class game {
  int selectedGame = -1;
  final int flappyBird = 0;
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
  PImage pipe = loadImage("flappyBirdPipe.png"); 
  PImage pipeUp = loadImage("pipeUp.png"); 
  PImage pipeDown = loadImage("pipeDown.png"); 
  PImage pipeUp2 = loadImage("pipeUp.png"); 
  PImage pipeDown2 = loadImage("pipeDown.png"); 
  boolean on = false;
  public flappyBirdButton() {
    itemType = 0;
    isSelected = false;
    iconInside = loadImage("flappyBird.png");
    iconInside.resize(60, 42);
    flappyBirdBackground.resize(775, 510); 
    flappyBirdLogo.resize(400, 100); 
    pipe.resize(450, 540); 
    pipeUp.resize(70, 200);
    pipeDown.resize(68, 200);
    pipeUp2.resize(70, 290);
    pipeDown2.resize(68, 130);
  }
  void display(int xPos, int yPos) {
    super.display(xPos, yPos);
    image(iconInside, xPos-25, yPos-25);
    if (isSelected && !on) {
      image(flappyBirdBackground, 110, 80);
      image(flappyBirdLogo, 450, 130); 
      image(pipe, 110, 78);
      image(theBird.bird, 200, 300);
      //border around TV:
      noFill();
      stroke(0);
      strokeWeight(12);
      rect(110, 80, 775, 510);
      strokeWeight(1);
      fill(0);
      textSize(35);
      text("HIGHSCORE: " + theBird.highScore, 580, 280);
      textSize(25);
      text("PRESS ANY KEY TO PLAY ", 612, 330);
    }
  }
}
public class bird {
  PImage bird = loadImage("flappyBird.png"); 
  int x = -200;
  int score = 0;
  int highScore = 0;
  int v = 0;
  int y;
  public bird() {
    bird.resize(60, 40);
  }
}
