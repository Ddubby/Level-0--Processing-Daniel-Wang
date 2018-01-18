 int x=200;
  int y=50;
void setup(){

 size(400,400);
  
}


void draw(){
  background(20,150,200);
  fill(0,205,50);
  ellipse(x,y,50,50);
  barrier();
}

void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
             y-=5;     
              //Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
              y+=5;    
              //Frog Y position goes down 
            }
            else if(keyCode == RIGHT)
            {
              x+=5;    
              //Frog X position goes right
            }
            else if(keyCode == LEFT)
            {
              x-=5;    
              //Frog X position goes left
            }
      }
}
void barrier(){
 if(x==0){
  x=5; 
 }
  if(y==0){
  y=5; 
 }
 if(x==400){
  x=395; 
 }
 if(y==400){
  y=395; 
 }
}
class Car{
  int carx=0;
  int cary=0;
  int size=0;
  int speed=0;
  Car(){
    
  }
}