int x=100;
int y=300;
int z=50;
double birdYVelocity=30;
double gravity = 1;
void setup(){
  size(700,600);


}

void draw(){
  background(0,200,200);
  fill(300,300,0);
  ellipse(x,y,z,z);
  y+=gravity;
}
void mousePressed(){
 y-=birdYVelocity; 
}