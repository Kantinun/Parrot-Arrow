class Parrot{
  PImage img;
  int x,y;
  Parrot(){
    img = loadImage("parrot.png");
  }
  void move(int nx, int ny){
    float targetX = nx;
    float dx = targetX-x;
    x+= dx*0.05;
    
    float targetY = ny;
    float dy = targetY-y;
    y+= dy*0.05;
    
    image(img, x, y, height/5, width/5);
    imageMode(CENTER);
  }
}
class Arrow{
  int x,y;
  float angle = 0.0;
  PImage img; 
  int nx,ny;
  
  Arrow(int tx, int ty){
    img = loadImage("arrow.png");
    x= tx;
    y = ty;
  }
  
  void updateAngle(int  ux, int uy){
    float targetX = ux;
    float dx = targetX-nx;
    nx+= dx*0.05;
    
    float targetY = uy;
    float dy = targetY-ny;
    ny+= dy*0.05;
    
    angle = atan2(ny-y,nx-x);
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
  //smooth();
  p1 = new Parrot();
  a1 = new Arrow(550,550);
}
void draw(){
  background(255);
  p1.move(mouseX,mouseY);
  a1.updateAngle(mouseX, mouseY);
  a1.display();
}
