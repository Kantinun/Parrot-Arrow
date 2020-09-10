class Parrot{
PImage img;  
  Parrot(){
    img = loadImage("parrot.png");
  }
  void move(int x, int y){
    image(img, x, y, height/5, width/5);
    imageMode(CENTER);
  }
}
class Arrow{
  int x,y;
  float angle = 0.0;
  PImage img; 
  
  Arrow(int tx, int ty){
    img = loadImage("arrow.png");
    x= tx;
    y = ty;
  }
  
  void updateAngle(int  ux, int uy){
    angle = atan2(uy-y,ux-x);
  }
  
  void display(){
    translate(x,y);
    rotate(angle);
    image(img,0,0,height/5,width/5);
    imageMode(CENTER);
  }
}
Parrot p1;
Arrow a1;
void setup(){
  size(600,600);
  p1 = new Parrot();
  a1 = new Arrow(550,550);
}
void draw(){
  background(255);
  p1.move(mouseX,mouseY);
  a1.updateAngle(mouseX, mouseY);
  a1.display();
}
