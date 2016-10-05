// Owen Brasseax
// 10/3/17

//plans to move keys to keyPressed()

float posX;
float posY;
float speedX;
float speedY;
float yl;
float yr;

void setup() {
  size(800,600);
  posX = 399.5;
  posY = 348.25;
  yl = 348.25-70;
  yr = 348.25-70;
  speedX = random(3,5) * ((int)random(2)*2-1);
  speedY = random(.5,8) * ((int)random(2)*2-1);
}

void draw() {
  background(25);
  stroke(255);
  strokeWeight(5);
  noFill();
  beginShape();
  vertex(1,1);
  vertex(798,1);
  vertex(798,100);
  vertex(1,100);
  endShape(CLOSE);
  
if (keyPressed){
    if (key == 'l') {
      if (yr > 105) {
      yr += -5;
      }
    }
    if (key == ';') {
      if (yr < 455) {
      yr += 5;
      }
    }
    if (key == 'a') {
      if (yl > 105) {
      yl += -5;
      }
    }
    if (key == 's') {
      if (yl < 455) {
      yl += 5;
      }
    }
}
  rect(25,yl,10,140);
  rect(764,yr,10,140);
  
  posX += speedX;
  posY += speedY;
     if (posY > 589 || posY < 110) {
    speedY = -speedY;
     }
     if (posX < 45 && posX > 40) {
       if (yl < posY && posY < yl+170) {
         speedX = -speedX;
       }
     }
      if (posX > 754 && posX < 759) {
       if (yr < posY && posY < yr+170) {
         speedX = -speedX;
       }
      }
     if (posX > 809) {
    //left wins
     }
     if (posX < -10) {
    //right wins
     }
  fill(255);
  ellipse(posX,posY,10,10);
  }
  