int frogx=200;
  int frogy=395;
  int logheight=30;
  Car first=new Car(100, 20, 150, 4);
  Car second=new Car(300,110, 100, 4);
  Car third=new Car(250,170, 100,3);
  Car log1=new Car(120,300,100,2);
  Car log2= new Car(300, 230, 100, 4);
void setup(){

 size(400,400);
  
}


void draw(){
  background(200,170,150);
  fill(0,20,205);
  rect(0,230,400,200);
  fill(20,205,20);
  ellipse(frogx,frogy,40,40);
  barrier();
  victory();
  first.display();
  second.display2();
  third.display3();
  log1.display4log();
  log2.display4log();
  first.moveleft();
  second.moveleft();
  third.moveright();
  log1.moveright();
  log2.moveleft();
  if(intersects(first)==true){
    frogx=200;
    frogy=395;
  }
  if(intersects(second)==true){
    frogx=200;
    frogy=395;
  }
  if(intersects(third)==true){
    frogx=200;
    frogy=395;
  }
  if(intersects(log1)==true){
    frogx=200;
    frogy=395;
  }
  if(intersects(log2)==true){
    frogx=200;
    frogy=395;
  }

}

void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
             frogy-=8;     
              //Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
              frogy+=8;    
              //Frog Y position goes down 
            }
            else if(keyCode == RIGHT)
            {
             frogx+=8;    
              //Frog X position goes right
            }
            else if(keyCode == LEFT)
            {
              frogx-=8;    
              //Frog X position goes left
            }
      }
}
void barrier(){
  if(frogx<=0){
   frogx=5; 
  }
 if(frogx>=400){
  frogx=395; 
 }
 if(frogy>=400){
  frogy=395; 
 }
}
void victory(){
 if(frogy<=0){
  println("Victory!");
  frogy=5;
 }
}
boolean intersects(Car car) {
      if ((frogy > car.getY() && frogy < car.getY()+55) && (frogx > car.getX() && frogx < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}
class Car{
  int carx=0;
  int cary=0;
  int size=0;
  int speed=0;
  void display() 
{
      fill(150,255,150);
      rect(carx , cary, size, 40);
}
void display2()
{
 fill(200,100,130);
 rect(carx, cary, size, 40);
}
void display3()
{
 fill(200,150,20);
 rect(carx, cary, size, 40);
}
void display4log()
{
 fill(135,77,54);
 rect(carx, cary, size, logheight);
}
void moveleft(){
  carx-=speed;
  if(carx<=-100){
  carx=400;
  }
}
  Car(int carx, int cary, int size, int speed){
    this.carx=carx;
    this.cary=cary;
    this.size=size;
    this.speed=speed;
  }
  void moveright(){
  carx+=speed;
  if(carx>=500){
  carx=-10;
  }
}
int getX(){
  return carx;
}
int getY(){
  return cary;
}
int getSize(){
  return size;
}

}