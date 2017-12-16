import ddf.minim.*;
Minim minim;
AudioSample sound;
int x=100;
int pipey= (int) random(400,500);
int y=300;
int z=50;
String score="0";
int s=Integer.parseInt(score);
double birdYVelocity=-10;
float gravity = 0.5;
int pipex=700;
void setup(){
  size(700,600);
minim = new Minim (this);
sound= minim.loadSample("bflap.wav",128);
}

void draw(){
  background(0,200,200);
  fill(300,300,0);
  ellipse(x,y,z,z);
  fill(0,0,0);
  birdYVelocity+=gravity;
  y+=birdYVelocity;
 if(pipex<=-100){
   pipex=700; 
   pipey= (int) random(400,500);
 s++;
}
 else{
   fill(0,235,50);
  rect(pipex-=2,pipey,100,300);
  fill(0,235,50);
  rect(pipex-=2,pipey-500,100,300);
  fill(0,0,0);
  textSize(32);
  text(s,350,100);
 }
 if(intersects(x, y, pipex,pipey,100)){
   exit();
 }
 if(intersects2(x, y, pipex,pipey-500,100)){
   exit();
 }
 if(y>=600){ 
exit();
 }
}
void mousePressed(){
 sound.trigger();
 birdYVelocity=-10;

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