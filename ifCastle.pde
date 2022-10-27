boolean ifCastle(int startX, int startY, boolean playWhite, boolean shortCastle) {
  boolean output=true;
  if (shortCastle) {
    if (game.board[startX][startY]!=null) {
      if (game.board[startX][startY].id==6) {
        if (game.board[startX][startY].canCastle) {
          if ((startX==4&&startY==7)||(startX==4&&startY==0)) {
            if (game.board[startX+1][startY]==null && game.board[startX+2][startY]==null) {
              if (squareAttackUpdate(startX+1, startY, game.board[startX][startY].isWhite) && squareAttackUpdate(startX+2, startY, game.board[startX][startY].isWhite)) {
                //println("bruh");
                if (game.board[startX+3][startY]!=null) {
                  if (game.board[startX+3][startY].id==2) {
                    if (game.board[startX+3][startY].canCastle) {
                      output=true;
                    } else {
                      output=false;
                    }
                  } else {
                    output=false;
                  }
                } else {
                  output=false;
                }
              }
            } else {
              output=false;
            }
          } else {
            output=false;
          }
        } else {
          output=false;
        }
      } else {
        output=false;
      }
    } else {
      output=false;
    }
  } else {//playwhite castling long
    if (game.board[startX][startY]!=null) {
      if (game.board[startX][startY].id==6) {
        if (game.board[startX][startY].canCastle) {
          if ((startX==4&&startY==7)||(startX==4&&startY==0)) {
            if (game.board[startX-1][startY]==null && game.board[startX-2][startY]==null && game.board[startX-3][startY]==null) {
              if (game.board[startX-4][startY]!=null) {
                if (game.board[startX-4][startY].id==2) {
                  if (game.board[startX-4][startY].canCastle) {
                    output=true;
                  } else {
                    output=false;
                  }
                } else {
                  output=false;
                }
              } else {
                output=false;
              }
            } else {
              output=false;
            }
          } else {
            output=false;
          }
        } else {
          output=false;
        }
      } else {
        output=false;
      }
    } else {
      output=false;
    }
  }
  return output;
}
