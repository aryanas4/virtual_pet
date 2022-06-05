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
