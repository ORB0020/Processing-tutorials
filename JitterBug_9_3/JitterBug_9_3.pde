 class JitterBug {
     float x;
     float y;
     int diameter;
     float speed = 2.5;
     JitterBug(float tempX, float tempY, int tempDiameter) {
       x = tempX;
       y = tempY;
       diameter = tempDiameter;
}
     void move() {
       x += random(-speed, speed);
       y += random(-speed, speed);
}
     void display() {
       ellipse(x, y, diameter, diameter);
     }
  }
  
   class BeetleBug {
     float x;
     float y;
     float speed = 2.5;
     BeetleBug(float tempX, float tempY) {
       x = tempX;
       y = tempY;
}
void move() {
       x += random(-speed, speed);
       y += random(-speed, speed);
}
     void display() {
       triangle(x,y+5,x-2.5,y,x+2.5,y);
     }
  }
  

JitterBug jit;
JitterBug bug;
BeetleBug beetle;

   void setup() {
     size(480, 120);
     smooth();
     jit = new JitterBug(width * 0.33, height/2, 50);
     bug = new JitterBug(width * 0.66, height/2, 10);
     beetle = new BeetleBug(width/2, height/2);
}
   void draw() {
     jit.move();
     jit.display();
     bug.move();
     bug.display();
     beetle.move();
     beetle.display();
   }