void analyseSquare(int startX, int startY, int x, int y, int id) {
  if (x<8&&x>-1&&y<8&&y>-1&&startX<8&&startX>-1&&startY<8&&startY>-1) {
    if (id==6) {
      if (x-startX==2) {
        if (ifCastle(startX, startY, game.playWhite, true)) {
          game.board[startX][startY].moveList[game.board[startX][startY].count][0]=x;
          game.board[startX][startY].moveList[game.board[startX][startY].count][1]=y;
          game.board[startX][startY].count++;
        }
      } else if (startX-x==2) {
        if (ifCastle(startX, startY, game.playWhite, false)) {
          game.board[startX][startY].moveList[game.board[startX][startY].count][0]=x;
          game.board[startX][startY].moveList[game.board[startX][startY].count][1]=y;
          game.board[startX][startY].count++;
        }
      } else if (game.board[x][y]==null) {
        game.board[startX][startY].moveList[game.board[startX][startY].count][0]=x;
        game.board[startX][startY].moveList[game.board[startX][startY].count][1]=y;
        game.board[startX][startY].count++;
      } else if (game.board[startX][startY].isWhite!=game.board[x][y].isWhite) {
        game.board[startX][startY].moveList[game.board[startX][startY].count][0]=x;
        game.board[startX][startY].moveList[game.board[startX][startY].count][1]=y;
        game.board[startX][startY].count++;
      }
    } else {
      if (x-startX==-2) {
        if (ifCastle(startX, startY, true, true)) {
          game.board[startX][startY].moveList[game.board[startX][startY].count][0]=x;
          game.board[startX][startY].moveList[game.board[startX][startY].count][1]=y;
          game.board[startX][startY].count++;
        }
      } else if (startX-x==2) {
        if (ifCastle(startX, startY, true, false)) {
          game.board[startX][startY].moveList[game.board[startX][startY].count][0]=x;
          game.board[startX][startY].moveList[game.board[startX][startY].count][1]=y;
          game.board[startX][startY].count++;
        }
      } else if (game.board[x][y]==null) {
        game.board[startX][startY].moveList[game.board[startX][startY].count][0]=x;
        game.board[startX][startY].moveList[game.board[startX][startY].count][1]=y;
        game.board[startX][startY].count++;
      } else if (game.board[startX][startY].isWhite!=game.board[x][y].isWhite) {
        game.board[startX][startY].moveList[game.board[startX][startY].count][0]=x;
        game.board[startX][startY].moveList[game.board[startX][startY].count][1]=y;
        game.board[startX][startY].count++;
        //println("awooga");
      }
    }
  }
}
