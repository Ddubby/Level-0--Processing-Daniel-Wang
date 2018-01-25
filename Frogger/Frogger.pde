int frogx=200;
  int frogy=395;
  Car first=new Car(100, 20, 150, 6);
  Car second=new Car(300,100, 100, 5);
  Car third=new Car(200,200, 100,3);
void setup(){

 size(400,400);
  
}


void draw(){
  background(20,150,200);
  fill(0,205,50);
  ellipse(frogx,frogy,50,50);
  barrier();
  first.display();
  second.display();
  third.display();
  first.moveleft();
  second.moveleft();
  third.moveleft();
}

void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
             frogy-=5;     
              //Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
              frogy+=5;    
              //Frog Y position goes down 
            }
            else if(keyCode == RIGHT)
            {
             frogx+=5;    
              //Frog X position goes right
            }
            else if(keyCode == LEFT)
            {
              frogx-=5;    
              //Frog X position goes left
            }
      }
}
void barrier(){
 if(frogx==0){
  frogx=5; 
 }
  if(frogy==0){
  frogy=5; 
 }
 if(frogx==400){
  frogx=395; 
 }
 if(frogy==400){
  frogy=395; 
 }
}
class Car{
  int carx=0;
  int cary=0;
  int size=0;
  int speed=0;
  void display() 
{
      fill(0,255,0);
      rect(carx , cary, size, 40);
}
void moveleft(){
  carx-=speed;
  if(carx<=0){
  carx=400;
  }
}
  Car(int carx, int cary, int size, int speed){
    this.carx=carx;
    this.cary=cary;
    this.size=size;
    this.speed=speed;
  }
}