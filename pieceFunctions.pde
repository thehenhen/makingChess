void displayPiece(int x, int y, boolean isWhite, boolean isRelevant, int id, boolean isSelected) {
  if (isRelevant) {
    if (isSelected) {
      if (isWhite) {//selected and white
        if (id==1) {
          image(whitePawn, mouseX, mouseY, 50, 50);
        } else if (id==2) {
          image(whiteRook, mouseX, mouseY, 50, 50);
        } else if (id==3) {
          image(whiteKnight, mouseX, mouseY, 50, 50);
        } else if (id==4) {
          image(whiteBishop, mouseX, mouseY, 50, 50);
        } else if (id==5) {
          image(whiteQueen, mouseX, mouseY, 50, 50);
        } else if (id==6) {
          image(whiteKing, mouseX, mouseY, 50, 50);
        }
      } else {//selected, black
        if (id==1) {
          image(blackPawn, mouseX, mouseY, 50, 50);
        } else if (id==2) {
          image(blackRook, mouseX, mouseY, 50, 50);
        } else if (id==3) {
          image(blackKnight, mouseX, mouseY, 50, 50);
        } else if (id==4) {
          image(blackBishop, mouseX, mouseY, 50, 50);
        } else if (id==5) {
          image(blackQueen, mouseX, mouseY, 50, 50);
        } else if (id==6) {
          image(blackKing, mouseX, mouseY, 50, 50);
        }
      }
    } else {
      if (isWhite) {//white, not selected
        if (id==1) {
          image(whitePawn, 75+x*50, 75+y*50, 50, 50);
        } else if (id==2) {
          image(whiteRook, 75+x*50, 75+y*50, 50, 50);
        } else if (id==3) {
          image(whiteKnight, 75+x*50, 75+y*50, 50, 50);
        } else if (id==4) {
          image(whiteBishop, 75+x*50, 75+y*50, 50, 50);
        } else if (id==5) {
          image(whiteQueen, 75+x*50, 75+y*50, 50, 50);
        } else if (id==6) {
          image(whiteKing, 75+x*50, 75+y*50, 50, 50);
        }
      } else {//black, not selected
        if (id==1) {
          image(blackPawn, 75+x*50, 75+y*50, 50, 50);
        } else if (id==2) {
          image(blackRook, 75+x*50, 75+y*50, 50, 50);
        } else if (id==3) {
          image(blackKnight, 75+x*50, 75+y*50, 50, 50);
        } else if (id==4) {
          image(blackBishop, 75+x*50, 75+y*50, 50, 50);
        } else if (id==5) {
          image(blackQueen, 75+x*50, 75+y*50, 50, 50);
        } else if (id==6) {
          image(blackKing, 75+x*50, 75+y*50, 50, 50);
        }
      }
    }
  }
}
