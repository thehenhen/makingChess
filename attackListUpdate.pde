void attackListUpdate(int x,int y,int id){
  game.board[x][y].attackList[0][0]=x+1;
  game.board[x][y].attackList[0][1]=y+1; 
  game.board[x][y].attackList[1][0]=x+1;
  game.board[x][y].attackList[1][1]=y-1;
  game.board[x][y].attackList[2][0]=x+1;
  game.board[x][y].attackList[2][1]=y; 
  game.board[x][y].attackList[3][0]=x;
  game.board[x][y].attackList[3][1]=y+1; 
  game.board[x][y].attackList[4][0]=x;
  game.board[x][y].attackList[4][1]=y-1; 
  game.board[x][y].attackList[5][0]=x-1;
  game.board[x][y].attackList[5][1]=y+1;
  game.board[x][y].attackList[6][0]=x-1;
  game.board[x][y].attackList[6][1]=y-1; 
  game.board[x][y].attackList[7][0]=x-1;
  game.board[x][y].attackList[7][1]=y; 
}
