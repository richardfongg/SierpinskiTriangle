void setup(){
size(800,800);
background(255);
frameRate(10);
}
void draw(){
  background(255);
  sierpinski(0, 800, mouseX);
}
void sierpinski(int x, int y, int len){
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  if(len <= 30){
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
   else{
     sierpinski(x, y, len/2);
     sierpinski(x + len/2, y, len/2);
     sierpinski(x + len/4, y - len/2, len/2);
   }
}
