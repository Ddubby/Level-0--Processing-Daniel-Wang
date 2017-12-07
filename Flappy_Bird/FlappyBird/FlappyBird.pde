int x=100;
int pipey= (int) random(400,500);
int y=300;
int z=50;
double birdYVelocity=60;
double gravity = 2;
int pipex=700;
void setup(){
  size(700,600);


}

void draw(){
  background(0,200,200);
  fill(300,300,0);
  ellipse(x,y,z,z);
  y+=gravity;
 if(pipex<=-100){
   pipex=700; 
   pipey= (int) random(400,500);
  }
 else{
   fill(0,235,50);
  rect(pipex-=5,pipey,100,300);
  fill(0,235,50);
  rect(pipex-=5,pipey-600,100,300);
 }
 if(intersects(x, y, pipex,pipey,100)){
   exit();
 }
 if(intersects2(x, y, pipex,pipey-600,100)){
   exit();
 }
}
void mousePressed(){
 y-=birdYVelocity; 
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}
boolean intersects2(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdX > paddleX && birdX < paddleX + paddleLength && birdY < paddleY + 300 )
return true;
else 
return false;
}