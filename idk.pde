/*//1 pawn
//2 rook
//3 knight
//4 bishop
//5 queen
//6 king
PImage whitePawn;
PImage whiteRook;
PImage whiteKnight;
PImage whiteBishop;
PImage whiteQueen;
PImage whiteKing;
PImage blackPawn;
PImage blackRook;
PImage blackKnight;
PImage blackBishop;
PImage blackQueen;
PImage blackKing;

Game game;

Pawn pawn1;
Pawn pawn2;
Pawn pawn3;
Pawn pawn4;
Pawn pawn5;
Pawn pawn6;
Pawn pawn7;
Pawn pawn8;
Pawn pawn9;
Pawn pawn10;
Pawn pawn11;
Pawn pawn12;
Pawn pawn13;
Pawn pawn14;
Pawn pawn15;
Pawn pawn16;

Pawn pawn17;
Pawn pawn18;
Pawn pawn19;
Pawn pawn20;
Pawn pawn21;
Pawn pawn22;
Pawn pawn23;
Pawn pawn24;
Pawn pawn25;
Pawn pawn26;
Pawn pawn27;
Pawn pawn28;
Pawn pawn29;
Pawn pawn30;
Pawn pawn31;
Pawn pawn32;

Rook rook1;
Rook rook2;
Rook rook3;
Rook rook4;
Rook rook5;
Rook rook6;
Rook rook7;
Rook rook8;
Rook rook9;
Rook rook10;
Rook rook11;
Rook rook12;
Rook rook13;
Rook rook14;
Rook rook15;
Rook rook16;

Piece knight1;
Piece knight2;
Piece knight3;
Piece knight4;
Piece knight5;
Piece knight6;
Piece knight7;
Piece knight8;
Piece knight9;
Piece knight10;
Piece knight11;
Piece knight12;
Piece knight13;
Piece knight14;
Piece knight15;
Piece knight16;

Piece bishop1;
Piece bishop2;
Piece bishop3;
Piece bishop4;
Piece bishop5;
Piece bishop6;
Piece bishop7;
Piece bishop8;
Piece bishop9;
Piece bishop10;
Piece bishop11;
Piece bishop12;
Piece bishop13;
Piece bishop14;
Piece bishop15;
Piece bishop16;

Piece queen1;
Piece queen2;
Piece queen3;
Piece queen4;
Piece queen5;
Piece queen6;
Piece queen7;
Piece queen8;
Piece queen9;
Piece queen10;
Piece queen11;
Piece queen12;
Piece queen13;
Piece queen14;
Piece queen15;
Piece queen16;

King king1;
King king2;

void draw() {
  noStroke();
  background(255);
  displayBoard();
  //game.selectBoardDisplay();
  game.boardDisplay();
  game.boardUpdate();
  //text(mouseX+","+mouseY, mouseX, mouseY);
}


void setup() {
  size(800, 500);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);

  whitePawn = loadImage("whitePawn.png");
  whiteRook = loadImage("whiteRook.png");
  whiteKnight = loadImage("whiteKnight.png");
  whiteBishop = loadImage("whiteBishop.png");
  whiteQueen = loadImage("whiteQueen.png");
  whiteKing = loadImage("whiteKing.png");

  blackPawn = loadImage("blackPawn.png");
  blackRook = loadImage("blackRook.png");
  blackKnight = loadImage("blackKnight.png");
  blackBishop = loadImage("blackBishop.png");
  blackQueen = loadImage("blackQueen.png");
  blackKing = loadImage("blackKing.png");

  game = new Game(true, false, true);
  game.board = new Piece[8][8];
  //game.selectBoard = new Piece[2][8][16];
  if (game.realGame) {
    if (game.playWhite==false) {
      pawn1 = new Pawn(0, 1, true, true, true);
      pawn2 = new Pawn(1, 1, true, true, true);
      pawn3 = new Pawn(2, 1, true, true, true);
      pawn4 = new Pawn(3, 1, true, true, true);
      pawn5 = new Pawn(4, 1, true, true, true);
      pawn6 = new Pawn(5, 1, true, true, true);
      pawn7 = new Pawn(6, 1, true, true, true);
      pawn8 = new Pawn(7, 1, true, true, true);

      pawn9 = new Pawn(0, 6, false, true, true);
      pawn10 = new Pawn(1, 6, false, true, true);
      pawn11 = new Pawn(2, 6, false, true, true);
      pawn12 = new Pawn(3, 6, false, true, true);
      pawn13 = new Pawn(4, 6, false, true, true);
      pawn14 = new Pawn(5, 6, false, true, true);
      pawn15 = new Pawn(6, 6, false, true, true);
      pawn16 = new Pawn(7, 6, false, true, true);

      rook1 =new Rook(0, 0, true, true, true);
      rook2 =new Rook(7, 0, true, true, true);
      rook3 =new Rook(0, 7, false, true, true);
      rook4 =new Rook(7, 7, false, true, true);

      knight1 =new Piece(1, 0, true, true, 3);
      knight2 =new Piece(6, 0, true, true, 3);
      knight3 =new Piece(1, 7, false, true, 3);
      knight4 =new Piece(6, 7, false, true, 3);

      bishop1 =new Piece(2, 0, true, true, 4);
      bishop2 =new Piece(5, 0, true, true, 4);
      bishop3 =new Piece(2, 7, false, true, 4);
      bishop4 =new Piece(5, 7, false, true, 4);

      queen1 =new Piece(4, 0, true, true, 5);
      queen2 =new Piece(4, 7, false, true, 5);

      king1= new King(3, 0, true, true, true);
      king2= new King(3, 7, false, true, true);
    } else {
      pawn1 = new Pawn(0, 1, false, true, true);
      pawn2 = new Pawn(1, 1, false, true, true);
      pawn3 = new Pawn(2, 1, false, true, true);
      pawn4 = new Pawn(3, 1, false, true, true);
      pawn5 = new Pawn(4, 1, false, true, true);
      pawn6 = new Pawn(5, 1, false, true, true);
      pawn7 = new Pawn(6, 1, false, true, true);
      pawn8 = new Pawn(7, 1, false, true, true);

      pawn9 = new Pawn(0, 6, true, true, true);
      pawn10 = new Pawn(1, 6, true, true, true);
      pawn11 = new Pawn(2, 6, true, true, true);
      pawn12 = new Pawn(3, 6, true, true, true);
      pawn13 = new Pawn(4, 6, true, true, true);
      pawn14 = new Pawn(5, 6, true, true, true);
      pawn15 = new Pawn(6, 6, true, true, true);
      pawn16 = new Pawn(7, 6, true, true, true);

      rook1 =new Rook(0, 0, false, true, true);
      rook2 =new Rook(7, 0, false, true, true);
      rook3 =new Rook(0, 7, true, true, true);
      rook4 =new Rook(7, 7, true, true, true);

      knight1 =new Piece(1, 0, false, true, 3);
      knight2 =new Piece(6, 0, false, true, 3);
      knight3 =new Piece(1, 7, true, true, 3);
      knight4 =new Piece(6, 7, true, true, 3);

      bishop1 =new Piece(2, 0, false, true, 4);
      bishop2 =new Piece(5, 0, false, true, 4);
      bishop3 =new Piece(2, 7, true, true, 4);
      bishop4 =new Piece(5, 7, true, true, 4);

      queen1 =new Piece(3, 0, false, true, 5);
      queen2 =new Piece(3, 7, true, true, 5);

      king1= new King(4, 0, false, true, true);
      king2= new King(4, 7, true, true, true);
    }
  } else {
    pawn1 = new Pawn(9, 5, false, true, true);
    pawn2 = new Pawn(9, 5, false, true, true);
    pawn3 = new Pawn(9, 5, false, true, true);
    pawn4 = new Pawn(9, 5, false, true, true);
    pawn5 = new Pawn(9, 5, false, true, true);
    pawn6 = new Pawn(9, 5, false, true, true);
    pawn7 = new Pawn(9, 5, false, true, true);
    pawn8 = new Pawn(9, 5, false, true, true);
    pawn25 = new Pawn(9, 5, false, true, true);
    pawn26 = new Pawn(9, 5, false, true, true);
    pawn27 = new Pawn(9, 5, false, true, true);
    pawn28 = new Pawn(9, 5, false, true, true);
    pawn29 = new Pawn(9, 5, false, true, true);
    pawn30 = new Pawn(9, 5, false, true, true);
    pawn31 = new Pawn(9, 5, false, true, true);
    pawn32 = new Pawn(9, 5, false, true, true);

    pawn9 = new Pawn(8, 5, true, true, true);
    pawn10 = new Pawn(8, 5, true, true, true);
    pawn11 = new Pawn(8, 5, true, true, true);
    pawn12 = new Pawn(8, 5, true, true, true);
    pawn13 = new Pawn(8, 5, true, true, true);
    pawn14 = new Pawn(8, 5, true, true, true);
    pawn15 = new Pawn(8, 5, true, true, true);
    pawn16 = new Pawn(8, 5, true, true, true);
    pawn17 = new Pawn(8, 5, true, true, true);
    pawn18 = new Pawn(8, 5, true, true, true);
    pawn19 = new Pawn(8, 5, true, true, true);
    pawn20 = new Pawn(8, 5, true, true, true);
    pawn21 = new Pawn(8, 5, true, true, true);
    pawn22 = new Pawn(8, 5, true, true, true);
    pawn23 = new Pawn(8, 5, true, true, true);
    pawn24 = new Pawn(8, 5, true, true, true);

    rook1 =new Rook(9, 2, false, true, true);
    rook2 =new Rook(9, 2, false, true, true);
    rook3 =new Rook(8, 2, true, true, true);
    rook4 =new Rook(8, 2, true, true, true);
    rook5 =new Rook(9, 2, false, true, true);
    rook6 =new Rook(9, 2, false, true, true);
    rook7 =new Rook(8, 2, true, true, true);
    rook8 =new Rook(8, 2, true, true, true);
    rook9 =new Rook(9, 2, false, true, true);
    rook10 =new Rook(9, 2, false, true, true);
    rook11 =new Rook(8, 2, true, true, true);
    rook12 =new Rook(8, 2, true, true, true);
    rook13 =new Rook(9, 2, false, true, true);
    rook14 =new Rook(9, 2, false, true, true);
    rook15 =new Rook(8, 2, true, true, true);
    rook16 =new Rook(8, 2, true, true, true);

    knight1 =new Piece(9, 4, false, true, 3);
    knight2 =new Piece(9, 4, false, true, 3);
    knight3 =new Piece(8, 4, true, true, 3);
    knight4 =new Piece(8, 4, true, true, 3);
    knight5 =new Piece(9, 4, false, true, 3);
    knight6 =new Piece(9, 4, false, true, 3);
    knight7 =new Piece(8, 4, true, true, 3);
    knight8 =new Piece(8, 4, true, true, 3);
    knight9 =new Piece(9, 4, false, true, 3);
    knight10 =new Piece(9, 4, false, true, 3);
    knight11 =new Piece(8, 4, true, true, 3);
    knight12 =new Piece(8, 4, true, true, 3);
    knight13 =new Piece(9, 4, false, true, 3);
    knight14 =new Piece(9, 4, false, true, 3);
    knight15 =new Piece(8, 4, true, true, 3);
    knight16 =new Piece(8, 4, true, true, 3);

    bishop1 =new Piece(9, 3, false, true, 4);
    bishop2 =new Piece(9, 3, false, true, 4);
    bishop3 =new Piece(8, 3, true, true, 4);
    bishop4 =new Piece(8, 3, true, true, 4);
    bishop5 =new Piece(9, 3, false, true, 4);
    bishop6 =new Piece(9, 3, false, true, 4);
    bishop7 =new Piece(8, 3, true, true, 4);
    bishop8 =new Piece(8, 3, true, true, 4);
    bishop9 =new Piece(9, 3, false, true, 4);
    bishop10 =new Piece(9, 3, false, true, 4);
    bishop11 =new Piece(8, 3, true, true, 4);
    bishop12 =new Piece(8, 3, true, true, 4);
    bishop13 =new Piece(9, 3, false, true, 4);
    bishop14 =new Piece(9, 3, false, true, 4);
    bishop15 =new Piece(8, 3, true, true, 4);
    bishop16 =new Piece(8, 3, true, true, 4);

    queen1 =new Piece(9, 1, false, true, 5);
    queen2 =new Piece(8, 1, true, true, 5);
    queen3 =new Piece(9, 1, false, true, 5);
    queen4 =new Piece(8, 1, true, true, 5);
    queen5 =new Piece(9, 1, false, true, 5);
    queen6 =new Piece(8, 1, true, true, 5);
    queen7 =new Piece(9, 1, false, true, 5);
    queen8 =new Piece(8, 1, true, true, 5);
    queen9 =new Piece(9, 1, false, true, 5);
    queen10 =new Piece(8, 1, true, true, 5);
    queen11 =new Piece(9, 1, false, true, 5);
    queen12 =new Piece(8, 1, true, true, 5);
    queen13 =new Piece(9, 1, false, true, 5);
    queen14 =new Piece(8, 1, true, true, 5);
    queen15 =new Piece(9, 1, false, true, 5);
    queen16 =new Piece(8, 1, true, true, 5);

    king1= new King(9, 0, false, true, true);
    king2= new King(8, 0, true, true, true);
  }
}
*/
