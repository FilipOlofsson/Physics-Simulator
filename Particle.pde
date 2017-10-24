class Particle {
  
  int x, y;
  int xV;
  int yV;
  int diameter = 5;
  int magnitudeRet = 1;
  
 Particle() {
   x = (int) random(width);
   y = (int) random(height);
 }
 
 void update() {
   x+=xV;
   y+=yV;
   if(xV < 0) xV += 1*magnitudeRet;
   if(xV > 0) xV -= 1*magnitudeRet;
   if(yV < 0) yV += 1*magnitudeRet;
   if(yV > 0) yV -= 1*magnitudeRet;
   if(x < 0) x = 0;
   if(x > width) x = width;
   if(y < 0) y = 0;
   if(y > height) y = height;
 }
 
 void draw() {
  stroke(0);
  ellipse(x, y, diameter, diameter);
 }
 
}