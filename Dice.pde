void setup()
{
  noLoop();
  size(500, 500);
}
void draw()
{
  noStroke();
  int sumDice = 0;
  background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  for(int y = 25; y < 420; y = y + 45){
    for(int x = 25; x < 470; x = x + 50){
  Die sue = new Die(x, y);
  sue.boop();
  sue.show();
  sumDice = sumDice + sue.roll;
    }
  }
  text("sum: " + sumDice, 215, 465);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int myX, myY, roll;

  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll = 0;
  }
  void boop()
  {
    roll = (int)(Math.random()*6+1);
  }
  void show()
  {
    if (roll == 6) {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      rect(myX, myY, 40, 40);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+10,myY+8,10,10);
      ellipse(myX+30,myY+8,10,10);
      ellipse(myX+10,myY+20,10,10);
      ellipse(myX+30,myY+20,10,10);
      ellipse(myX+10,myY+32,10,10);
      ellipse(myX+30,myY+32,10,10);
    } else if (roll == 5) {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      rect(myX, myY, 40, 40);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+10,myY+8,10,10);
      ellipse(myX+30,myY+8,10,10);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+10,myY+32,10,10);
      ellipse(myX+30,myY+32,10,10);
    } else if (roll == 4) {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      rect(myX, myY, 40, 40);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+10,myY+8,9,9);
      ellipse(myX+30,myY+8,9,9);
      ellipse(myX+10,myY+28,9,9);
      ellipse(myX+30,myY+28,9,9);
    } else if (roll == 3) {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      rect(myX, myY, 40, 40);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+10,myY+8,10,10);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+30,myY+32,10,10);
    } else if (roll == 2){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      rect(myX, myY, 40, 40);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+10,myY+8,10,10);
      ellipse(myX+30,myY+32,10,10);
    }else if (roll == 1){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      rect(myX, myY, 40, 40);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+20,myY+20,11,11);
    }
  }
}
