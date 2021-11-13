void setup() {
  size(1800,1200);
}
 
void draw() {
  background(255);
  drawCircle(width/2,height/2,500);
}
 
void drawCircle(float x, float y, float radius) {
//  fill(map(radius,0,200,0,255),200,100);
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 20) {
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x , y + radius/2 , radius/2);
    drawCircle(x , y - radius/2 , radius/2);

//drawCircle() calls itself twice,
//creating a branching effect. For every circle,
//a smaller circle is drawn to the left and the right.
  }
}
