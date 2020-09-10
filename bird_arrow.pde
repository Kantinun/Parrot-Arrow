class Parrot{
PImage img;  
  Parrot(){
    img = loadImage("parrot.png");
  }
  void move(int x, int y){
    image(img, x-(width/10), y-(height/10), height/5, width/5);
  }
}
Parrot p1;
void setup(){
  size(600,600);
  p1 = new Parrot();
}
void draw(){
  background(255);
  p1.move(mouseX,mouseY);
}
