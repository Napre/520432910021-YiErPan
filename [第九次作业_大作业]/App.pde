PFont font;

void setup () {
  size (480, 800);
  background (0, 0, 0);

  font=createFont("Candara-LightItalic-48", 50);
}
void draw () {
  fill (#FF0011);
  rect (0, 0, 800, 30);


  fill (0, 0, 0);
  textFont (font, 25);
  text  ("Draw Something", 140, 30);

  if (mousePressed) {
    fill (255, 255, 255);
  }
  fill(random (255), random (255), random (255));
  rect(mouseX, mouseY, 20, 20);
}

void keyPressed () {
  if (key == 's') {
    saveFrame("myDrawing-######.jpg");
  }
}

void mousePressed(){
  fill(0);
  rect(0,0,480,800);
}
