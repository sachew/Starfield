
//your code here
Particle[] arr = new Particle[150];
void setup()
{
  //your code here
  size(400,400);
  for(int i=0; i< arr.length; i++){
    arr[i] = new Particle();
  }
  
  arr[0] = new OddballParticle();
}
void draw()
{
  //your code here
  background(0);
  for(int i=0; i<arr.length; i++){
    arr[i].move();
    arr[i].show();
  }
}
class Particle
{
  //your code here
  double x, y, speed, angle;
  int myColor;
  Particle(){
    x = 200;
    y = 200;
    speed = Math.random()*10;
    angle = Math.random()*2*Math.PI;
    myColor = color(160,170,180);
  }
  
  void move(){
    x = x + Math.cos(angle)*speed;
    y = y + Math.sin(angle)*speed;
  }
  
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)x,(float)y,5,5);
  }
}

class OddballParticle extends Particle
{
  OddballParticle(){
    x = 200;
    y = 200;
    speed = Math.random()*3;
    angle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*100+100),(int)(Math.random()*100+120),(int)(Math.random()*60+150));
  }
  
  void move(){
    x = x + Math.cos(angle)*speed;
    y = y + Math.sin(angle)*speed;
  }
  
  void show(){
    fill(myColor);
    rect((float)x,(float)y,25,15);
  }
}
