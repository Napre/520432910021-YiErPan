PFont f;
float angleRotate = 0.0;

void setup() {
  size(640, 360);
  background(0);

  f = loadFont("BERNIERRegular-Regular-48.vlw");
  textFont(f);
} 

void draw() {
  background(0);

  strokeWeight(10);
  stroke(0,245,255,120);

  pushMatrix();
  float angle1 = radians(315);
  translate(40, 180);
  rotate(angle1);
  fill(255,140,0,100);
  text("or Not to be", 0, 0);
  line(0, 0, 220, 0);
  popMatrix();
  
  pushMatrix();
  float angle2 = radians(315);
  translate(40,100);
  rotate(angle2);
  fill(0,255,0);
  text("To be", 0, 0);
  line(0, 0, 100, 0);
  popMatrix();
  
 pushMatrix();
  float angle4 = radians(360);
  translate(300,100);
  rotate(angle4);
  fill(0,255,0);
  text("groceries", 0, 0);
  line(0, 0, 250, 0);
  popMatrix();
  
 pushMatrix();
  float angle5= radians(360);
  translate(300,125);
  rotate(angle5);
  fill(0,255,0);
  text("groceries", 0, 0);
  line(0, 0, 250, 0);
  popMatrix();
  
 pushMatrix();
  float angle6 = radians(360);
  translate(300,150);
  rotate(angle6);
  fill(0,255,0);
  text("groceries", 0, 0);
  line(0, 0, 250, 0);
  popMatrix();
  
 pushMatrix();
  float angle7 = radians(270);
  translate(300,150);
  rotate(angle7);
  fill(255,0,0);
  text("hell", 0, 0);
  line(0, 0, 200, 0);
  popMatrix();

 pushMatrix();
  translate(40, 260);
  rotate(radians(angleRotate));
  fill(255,0,255);
  text( "That is the question", 0, 0);
  line(0, 0, 420, 0);
  popMatrix();
  
  angleRotate += 0.25;
  
   strokeWeight(25);
  stroke(255,0,255,120);

  pushMatrix();
  float angle3 = radians(345);
  translate(100, 350);
  rotate(angle3);
  fill(255,140,0);
  text("cyberrrrpuuunk!!!", 30, 0);
  line(0, 0, 530, 0);
  popMatrix();
  
  stroke(255,0,0);
  strokeWeight(4);
  point(40, 180);
  point(40, 100);
  point(40, 260);
  point(300,150);

  stroke(0,255,0);
  strokeWeight(10);
  point(100,350);
}
