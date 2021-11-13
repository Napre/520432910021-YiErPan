ArrayList<particle> p = new ArrayList<particle>();

void setup() {
  size(1000,600);
  background(0);
  frameRate(120);

  mouseX = width / 2;
  mouseY = 0;
  mousePressed();
}

void draw() {
  if (frameCount%50 == 0){
    mousePressed();
  }
  fade();
  purge();
  
  for (int i = 0; i <p.size(); i++) {
    p.get(i).step();
    p.get(i).display();
  }
}

void mousePressed() {
  //if (mousePressed) {
    for (int i = 0; i < 200; i++) {
     p.add(new particle());
    }
  //}
}


void fade() {
  fill(0, 0, 0, 32);
  noStroke();
  rect(0, 0, width, height);
}

void purge() {
  for (int i = 0; i <p.size(); i ++) {
    if (dist(0, 0, p.get(i).xv, p.get(i).yv) < 0.2 && p.get(i).y > height*0.99-p.get(i).size) {
      p.remove(i);
    }
  }
}

class particle {
  
  float x = mouseX;
  float px = x;
  float y = mouseY;
  float py = y;
  float dir = random(0, TWO_PI);
  float mag = (5*(((width/1920)*random(0, 10)) + 0.1));
  float xv = mag*cos(dir);
  float yv = mag*sin(dir);
  float size = random(1, 5);
  float friction = 0.5;
  float gravity = 0.2;

  void display() {
    strokeWeight(size);
    //stroke(255);
    stroke(50+random(205),50+random(205),50+random(205));
    line(px, py, x, y);
  }


  void step() {
    px = x;
    py = y;
    x += xv;
    y += yv;
    yv += gravity;
    //right
    if (x > width-(size/2)) {
      x -= xv;
      xv = -friction*abs(xv);
      yv *= friction;
      while (x > width-(size/2)){
        x -= 0.1;
      }
    }
    //left
    if (x < 0+(size/2)) {
      x -= xv;
      xv = friction*abs(xv);
      yv *= friction;
      while (x < 0+(size/2)){
        x += 0.1;
      }
    }
    //bottom
    if (y > height-(size/2)) {
      y -= yv;
      yv = -friction*abs(yv);
      xv *= friction;
      while (y > height-(size/2)){
        y -= 0.1;
      }
    }
    //top
    if (y < 0+(size/2)) {
      y -= yv;
      yv = friction*abs(yv);
      xv *= friction;
      while (y < 0+(size/2)){
        y += 0.1;
      }
    }
  }
}
