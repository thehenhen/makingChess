boolean holdingPiece=false;
int clickedX;
int clickedY;

class Game {
  boolean whiteKing=true;
  boolean blackKing=true;
  boolean playWhite;
  boolean realGame;
  boolean pvp;
  boolean whiteToMove=true;
  Piece[][] board;

  Game(boolean PVP, boolean playwhite, boolean realgame) {
    pvp=PVP;
    playWhite=playwhite;
    realGame=realgame;
  }

  void boardDisplay() {
    for (int i=0; i<8; i++) {
      for (int j=0; j<8; j++) {
        if (board[i][j]!=null) {
          if (board[i][j].isSelected!=true) {
            (board[i][j]).display();
          }
        }
      }
    }
    for (int i=0; i<8; i++) {
      for (int j=0; j<8; j++) {
        if (board[i][j]!=null) {
          if (board[i][j].isSelected) {
            (board[i][j]).display();
          }
        }
      }
    }
  }
  void boardUpdate() {
    for (int i=0; i<8; i++) {
      for (int j=0; j<8; j++) {
        if (board[i][j]!=null) {
          if (board[i][j].x<8 && board[i][j].y<8 && board[i][j].isRelevant) {
            //board[board[i][j].x][board[i][j].y]=board[i][j];
            board[i][j].update();
          }
        }
      }
    }
  }

  void boardMoveUpdate() {
    for (int i=0; i<8; i++) {
      for (int j=0; j<8; j++) {
        if (board[i][j]!=null) {
          if (board[i][j].x<8 && board[i][j].y<8 && board[i][j].isRelevant) {
            //board[board[i][j].x][board[i][j].y]=board[i][j];
            if (board[i][j].id==1) {
            } else if (board[i][j].id==2) {
            } else if (board[i][j].id==3) {
            } else if (board[i][j].id==4) {
            } else if (board[i][j].id==5) {
            } else if (board[i][j].id==6) {
              board[i][j].kingMoveUpdate(i, j);
            }
          }
        }
      }
    }
  }
}

class Piece {
  boolean isWhite=true;
  boolean isRelevant=true;
  boolean isSelected=false;
  int x;
  int y;
  int id;
  int[][] moveList;
  int[][] attackList;
  boolean canCastle;

  int count=0;

  Piece(int X, int Y, boolean iswhite, boolean isrelevant, int ID) {
    x=X;
    y=Y;
    isWhite=iswhite;
    isRelevant=isrelevant;
    id=ID;
    if (x<8&&y<8&&x>-1&&y>-1&&isRelevant) {
      game.board[x][y]=this;
    }
    moveList = new int[10][2];
    attackList = new int[10][2];
  }

  void display() {
    if (game.playWhite) {
      if (isSelected==false) {
        displayPiece(x, y, isWhite, isRelevant, id, isSelected);
      } else {
        displayPiece((int(mouseX)-50)/50, (int(mouseY)-50)/50, isWhite, isRelevant, id, isSelected);
        //x=(int(mouseX)-50)/50;
        //y=(int(mouseY)-50)/50;
      }
    } else {
      if (isSelected==false) {
        displayPiece(7-x, 7-y, isWhite, isRelevant, id, isSelected);
      } else {
        displayPiece(7-(int(mouseX)-50)/50, 7-(int(mouseY)-50)/50, isWhite, isRelevant, id, isSelected);
        //x=(int(mouseX)-50)/50;
        //y=(int(mouseY)-50)/50;
      }
    }
  }

  void update() {
    if (x<8&&y<8&&isRelevant) {
      game.board[x][y]=this;
    }
  }

  void kingMoveUpdate(int x, int y) {
    count = 0;
    for (int i=0; i<10; i++) {
      for (int j=0; j<2; j++) {
        moveList[i][j]=-1;
      }
    }
    for (int i=0; i<8; i++) {
      for (int j=0; j<2; j++) {
        attackList[i][j]=-2;
      }
    }

    println(x+" "+y+" "+isWhite+" "+canCastle);
    analyseSquare(x, y, x+1, y+1, 6);

    analyseSquare(x, y, x+1, y-1, 6);

    analyseSquare(x, y, x+1, y, 6);

    analyseSquare(x, y, x, y+1, 6);

    analyseSquare(x, y, x, y-1, 6);

    analyseSquare(x, y, x-1, y+1, 6);

    analyseSquare(x, y, x-1, y, 6);

    analyseSquare(x, y, x-1, y-1, 6);

    analyseSquare(x, y, x+2, y, 6);
    analyseSquare(x, y, x-2, y, 6);
    attackListUpdate(x, y, 6);
    /*
    for (int i=0; i<8; i++) {
      for (int j=0; j<2; j++) {
        print(attackList[i][j]+" ");
      }
      println();
    }
    println("\n\n\n");*/
  }
}

class King extends Piece {
  boolean inCheck=false;

  King(int X, int Y, boolean iswhite, boolean isrelevant, boolean cancastle) {
    super(X, Y, iswhite, isrelevant, 6);
    canCastle=cancastle;
  }
}

class Rook extends Piece {

  Rook(int X, int Y, boolean iswhite, boolean isrelevant, boolean cancastle) {
    super(X, Y, iswhite, isrelevant, 2);
    canCastle=cancastle;
  }
}


class Pawn extends Piece {
  boolean canDouble;

  Pawn(int X, int Y, boolean iswhite, boolean isrelevant, boolean candouble) {
    super(X, Y, iswhite, isrelevant, 1);
    canDouble=candouble;
  }
}

void mouseClicked() {
  int newClickX=(int(mouseX)-50)/50;
  int newClickY=(int(mouseY)-50)/50;
  if (game.playWhite==false) {
    newClickX=7-newClickX;
    newClickY=7-newClickY;
  }
  if (newClickX<8 && newClickY<8 && mouseX>50 && mouseY>50) {
    if (holdingPiece==false) {//not holding a piece
      if (game.board[newClickX][newClickY]!=null) {//square clicked is not empty
        if (game.whiteToMove==game.board[newClickX][newClickY].isWhite) {
          notHoldingNotEmpty(newClickX, newClickY);
        }
      } else {
        notHoldingEmpty();
      }
    } else {//holding a piece
      if (game.board[newClickX][newClickY]!=null) {//not empty
        holdingNotEmpty(newClickX, newClickY);
        game.boardUpdate();
        game.boardMoveUpdate();
      } else {//empty
        holdingEmpty(newClickX, newClickY);
        game.boardUpdate();
        game.boardMoveUpdate();
      }
      
    }
  } else if (newClickX>7 && newClickY<10 && newClickX>-1 && newClickY<6) {
    //selectFromSide();
  }
  //board[(int(mouseX)-50)/50][(int(mouseY)-50)/50].isSelected=!board[(int(mouseX)-50)/50][(int(mouseY)-50)/50].isSelected;
  //print((int(mouseX)-50)/50);
  //println(" "+(int(mouseY)-50)/50);
}
