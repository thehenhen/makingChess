void holdingEmpty(int newClickX,int newClickY) {
  boolean found=false;
  for (int i=0; i<10; i++) {
    for (int j=0; j<2; j++) {
      if (game.board[clickedX][clickedY].moveList[i][0]==newClickX && game.board[clickedX][clickedY].moveList[i][1]==newClickY ) {
        found=true;
      }
    }
  }
  if (game.board[clickedX][clickedY].id!=6) {
    found=true;
  }
  //println("holding piece, empty");
  //println(board[newClickX][newClickY]);
  if (found) {
    //println(game.board[clickedX][clickedY].id);
    if (game.board[clickedX][clickedY].id==6 || game.board[clickedX][clickedY].id==2) {
      game.board[clickedX][clickedY].canCastle=false;
      //println(game.board[clickedX][clickedY].id);
    }
    if (game.board[clickedX][clickedY].id==6 && abs(clickedX-newClickX)>1) {
      if (newClickX==6) {//short castle
        if (clickedY==7) {//white castle
          game.board[7][7].x=5;
          game.board[newClickX-1][newClickY]=game.board[7][7];
          game.board[7][7]=null;
          game.board[clickedX][clickedY].isSelected=false;
          holdingPiece=false;
          game.board[clickedX][clickedY].x=newClickX;
          game.board[clickedX][clickedY].y=newClickY;
          game.board[newClickX][newClickY]=game.board[clickedX][clickedY];
          game.board[clickedX][clickedY]=null;
          game.whiteToMove=!game.whiteToMove;
        } else if (clickedY==0) {
          game.board[7][0].x=5;
          game.board[newClickX-1][newClickY]=game.board[7][0];
          game.board[7][0]=null;
          game.board[clickedX][clickedY].isSelected=false;
          holdingPiece=false;
          game.board[clickedX][clickedY].x=newClickX;
          game.board[clickedX][clickedY].y=newClickY;
          game.board[newClickX][newClickY]=game.board[clickedX][clickedY];
          game.board[clickedX][clickedY]=null;
          game.whiteToMove=!game.whiteToMove;
        }
      } else if (newClickX==2) {//long castle
        if (clickedY==7) {//white
          game.board[0][7].x=3;
          game.board[newClickX+1][newClickY]=game.board[0][7];
          game.board[0][7]=null;
          game.board[clickedX][clickedY].isSelected=false;
          holdingPiece=false;
          game.board[clickedX][clickedY].x=newClickX;
          game.board[clickedX][clickedY].y=newClickY;
          game.board[newClickX][newClickY]=game.board[clickedX][clickedY];
          game.board[clickedX][clickedY]=null;
          game.whiteToMove=!game.whiteToMove;
        } else if (clickedY==0) {
          game.board[0][0].x=3;
          game.board[newClickX+1][newClickY]=game.board[0][0];
          game.board[0][0]=null;
          game.board[clickedX][clickedY].isSelected=false;
          holdingPiece=false;
          game.board[clickedX][clickedY].x=newClickX;
          game.board[clickedX][clickedY].y=newClickY;
          game.board[newClickX][newClickY]=game.board[clickedX][clickedY];
          game.board[clickedX][clickedY]=null;
          game.whiteToMove=!game.whiteToMove;
        }
      }
    } else {
      game.board[clickedX][clickedY].isSelected=false;
      holdingPiece=false;
      game.board[clickedX][clickedY].x=newClickX;
      game.board[clickedX][clickedY].y=newClickY;
      game.board[newClickX][newClickY]=game.board[clickedX][clickedY];
      game.board[clickedX][clickedY]=null;
      game.whiteToMove=!game.whiteToMove;
    }
  } else {
    game.board[clickedX][clickedY].isSelected=false;
    holdingPiece=false;
  }
}

void holdingNotEmpty(int newClickX,int newClickY) {
  //println("holding piece, not empty");
  //println(board[newClickX][newClickY].isSelected);
  boolean found=false;
  for (int i=0; i<10; i++) {
    for (int j=0; j<2; j++) {
      if (game.board[clickedX][clickedY].moveList[i][0]==newClickX && game.board[clickedX][clickedY].moveList[i][1]==newClickY ) {
        found=true;
      }
    }
  }
  if (game.board[clickedX][clickedY].id!=6) {
    found=true;
  }
  game.board[clickedX][clickedY].isSelected=false;
  holdingPiece=false;
  if (clickedX!=newClickX || clickedY!=newClickY) {
    if (found) {
      game.board[newClickX][newClickY].isRelevant=false;
      game.board[newClickX][newClickY].x=0;
      game.board[newClickX][newClickY].y=0;
      game.board[newClickX][newClickY].isSelected=false;
      game.board[newClickX][newClickY]=null;
      game.board[clickedX][clickedY].x=newClickX;
      game.board[clickedX][clickedY].y=newClickY;
      game.board[newClickX][newClickY]=game.board[clickedX][clickedY];
      game.board[clickedX][clickedY]=null;
      game.whiteToMove=!game.whiteToMove;
    }
  }
}

void notHoldingEmpty() {
  //println("not holding piece, empty");
  //println(board[newClickX][newClickY]);
}

void notHoldingNotEmpty(int newClickX,int newClickY) {
  //println("not holding piece, not empty");
  //println(board[newClickX][newClickY].isSelected);
  if (game.board[newClickX][newClickY].isSelected==false) {
    game.board[newClickX][newClickY].isSelected=true;
    holdingPiece=true;
    clickedX=newClickX;
    clickedY=newClickY;
    ///println(clickedX+" "+clickedY);
    //println("hi");
  }
}
/*
void selectFromSide() {
 clickedX=newClickX;
 clickedY=newClickY;
 game.selectBoard[clickedX-8][clickedY].isSelected=true;
 }*/
