Die one;
int sum = 0;
void setup() {
  noLoop();
  size(300, 400);
}

void draw() {
  background(130, 130, 130);
  for (int y = 0; y < 300; y+=100) {
    for (int x = 0; x < 300; x+=100) {
      one = new Die(x, y);
      one.roll();
      one.show();
    }
  }
  text("Total Sum of Dice:", 75, 350);
  text(sum, 180, 350);
  sum = 0;
}

void mousePressed() {
  redraw();
}

class Die {
  int myX, myY, dots, mySize;
  Die(int x, int y) {
    myX = x;
    myY = y;
    dots = 1;
    mySize = 100;
  }
  void roll() {
    dots = (int)((Math.random()*6)+1);
    sum = sum + dots;
  }
  void show() {
    fill(255);
    rect(myX, myY, mySize, mySize, 25);
    if (dots == 1) {
      fill(0);
      ellipse(myX + (mySize/2), myY + (mySize/2), 16, 16);
    } else if (dots == 2) {
      fill(0);
      ellipse(myX + (mySize/4), myY + (mySize/4), 16, 16);
      ellipse(myX + (3*(mySize/4)), myY + (3*(mySize/4)), 16, 16);
    } else if (dots == 3) {
      fill(0);
      ellipse(myX + (mySize/2), myY + (mySize/2), 16, 16);
      ellipse(myX + (mySize/4), myY + (mySize/4), 16, 16);
      ellipse(myX + (3*(mySize/4)), myY + (3*(mySize/4)), 16, 16);
    } else if (dots == 4) {
      fill(0);
      ellipse(myX + (mySize/4), myY + (mySize/4), 16, 16);
      ellipse(myX + (3*(mySize/4)), myY + (mySize/4), 16, 16);
      ellipse(myX + (3*(mySize/4)), myY + (3*(mySize/4)), 16, 16);
      ellipse(myX + (mySize/4), myY + (3*(mySize/4)), 16, 16);
    } else if (dots == 5) {
      fill(0);
      ellipse(myX + (mySize/2), myY + (mySize/2), 16, 16);
      ellipse(myX + (mySize/4), myY + (mySize/4), 16, 16);
      ellipse(myX + (3*(mySize/4)), myY + (3*(mySize/4)), 16, 16);
      ellipse(myX + (3*(mySize/4)), myY + (mySize/4), 16, 16);
      ellipse(myX + (mySize/4), myY + (3*(mySize/4)), 16, 16);
    } else {
      fill(0);
      ellipse(myX + (mySize/4), myY + (mySize/4), 16, 16);
      ellipse(myX + (3*(mySize/4)), myY + (mySize/4), 16, 16);
      ellipse(myX + (mySize/4), myY + (mySize/2), 16, 16);
      ellipse(myX + (3*(mySize/4)), myY + (mySize/2), 16, 16);
      ellipse(myX + (mySize/4), myY + (3*(mySize/4)), 16, 16);
      ellipse(myX + (3*(mySize/4)), myY + (3*(mySize/4)), 16, 16);
    }
  }
}
