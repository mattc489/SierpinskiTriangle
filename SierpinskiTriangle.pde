int baseCase = 30;
int max = 500;

public void setup()
{
size(600,600);
background(255);
noLoop();
}
public void draw()
{
background(255);
sierpinski(50, 400, max);
}
public void sierpinski(int x, int y, int len) 
{
if(len<=baseCase){
 int x1 = x;
 int y1 = y;
 int x2 = x + len/2;
 int y2 = y + len/2;
 int x3 = x + len;
 int y3 = y;
 fill(0);
 stroke(0);
 triangle(x1,y1,x2,y2,x3,y3);
 }
 else{
  int halfLength = len/2; 
  sierpinski(x,y,halfLength);
  sierpinski(x + halfLength, y, halfLength);
  sierpinski(x + halfLength/2, y - halfLength/2, halfLength);
 }
}
