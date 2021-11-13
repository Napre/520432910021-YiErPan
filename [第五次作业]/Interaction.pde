boolean a = false;
boolean b = false;
boolean c = false;
boolean d = false;

void setup(){
  size(600,540);
  strokeWeight(3);

    //the canvas
    fill(255);
    rect(80,20,500,500);}

void draw(){
    // 1st Botton
    fill(132,112,255);//LightSlateBlue Botton
    rect(20,20,40,30);
    //2nd Botton
    fill(0,255,255);//Cyan Botton
    rect(20,70,40,30);
    //3rd Botton 
    fill(255,106,106);//IndianRed1 Botton
    rect(20,120,40,30);
    //4th Botton
    fill(0);
    rect(20,170,40,53);

    firstBotton();
    secondBotton();
    thirdBotton();
    forthBotton();

  if(a == true){
    if(mousePressed){
      fill(132,112,255,150);
      ellipse(mouseX,mouseY,50,50);
    }
  }

  else if(b == true){
    if(mousePressed){
      fill(0,255,255,150);
      rect(mouseX,mouseY,50,50);
    }
  }

  else if(c == true){
    if(mousePressed){
      fill(255,106,106,150);
      triangle(mouseX,mouseY-17.5,mouseX-20,mouseY+17.5,mouseX+20,mouseY+17.5);
    }
  }
  
  else if(d == true){
    if(mousePressed){
      fill(255);
      rect(80,20,500,500);
    }
  
  }
  
}

// VOIDS
// 1st Botton
void firstBotton(){
  if ((mousePressed == true)&&(mouseX > 20)&&(mouseX < 60)&&
  (mouseY > 20)&&(mouseY < 50)){
  if(mousePressed == true)
  a = true;
  b = false;
  c = false;
  d = false;
  }
}

// 2nd Botton
void secondBotton(){
  if ((mousePressed == true)&&(mouseX > 20)&&(mouseX < 60)&&
  (mouseY > 70)&&(mouseY < 100)){
  if(mousePressed == true)
  a = false;
  b = true;
  c = false;
  d = false;
  }
}

// 3rd Botton
void thirdBotton(){
  if ((mousePressed == true)&&(mouseX > 20)&&(mouseX < 60)&&
  (mouseY > 120)&&(mouseY < 150)){
  if(mousePressed == true)
  a = false;
  b = false;
  c = true;
  d = false;
  }
}

// 4th Botton
 void forthBotton(){
  if ((mousePressed == true)&&(mouseX > 20)&&(mouseX < 60)&&
  (mouseY > 170)&&(mouseY < 223)){
  if(mousePressed == true)
  a = false;
  b = false;
  c = false;
  d = true;
  }
}
