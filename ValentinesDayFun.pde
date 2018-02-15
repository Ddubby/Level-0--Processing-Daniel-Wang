
void setup(){
PImage image=loadImage("maxresdefault.jpg");
size(1000,600);
image(image,0,0);
String a=convertToNumbers("Happy");
String b=convertToNumbers("Valentines");
String c=convertToNumbers("Day");
fill(0,0,0);
textSize(30);
text(a,350,250);
text(b,200,350);
text(c,400,450);
}

String convertToNumbers(String in) {
      String out = "";
      for (int i=0; i < in.length(); i++) {
             int num = (int) in.charAt(i);
             out += num;
              out += " ";
      }
      return out; }