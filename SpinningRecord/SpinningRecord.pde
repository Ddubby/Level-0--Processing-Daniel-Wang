import processing.sound.*;
SoundFile sound;
import ddf.minim.*;
Minim minim;
AudioPlayer song;
boolean playing=false;
int angle;
PImage pictureOfRecord;
 void setup() {
pictureOfRecord= loadImage ("record.jpg");
size(950, 950); 
sound = new SoundFile(this, "batman.wav" );

 }
 void rotateImage(PImage image, int angle){
translate(950/2, 950/2);
 rotate(angle*TWO_PI/360);
 translate(-950/2, -950/2);
 
 
 }
void draw(){
 if(mousePressed){ 
   if(!playing){
   sound.play();
   playing=true;
   }
   rotateImage(pictureOfRecord, angle);
 }

  image(pictureOfRecord, 0, 0);
angle+=10;


}
void mouseReleased(){
if(playing){
  sound.stop();
  playing=false;
}
}