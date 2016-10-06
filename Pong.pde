// Owen Brasseax
// 10/3/17

float posX;
float posY;
float speedX;
float speedY;
float yl;
float yr;
int scoreLeft = 0;
int scoreRight = 0;
int end = 1;

void setup() {
  size(800,600);
}

void draw() {
  background(25);
  stroke(255);
  textSize(80);
  text(nf(scoreLeft),20,80);
  text(nf(scoreRight),730, 80);
  if (end == 1) {
  stroke(255);
  strokeWeight(5);
  noFill();
  beginShape();
  vertex(1,1);
  vertex(798,1);
  vertex(798,100);
  vertex(1,100);
  endShape(CLOSE);
  posX = 399.5;
  posY = 348.25;
  yl = 348.25-70;
  yr = 348.25-70;
  speedX = random(3,4) * ((int)random(2)*2-1);
  speedY = random(.5,8) * ((int)random(2)*2-1);
  rect(25,yl,10,140);
  rect(764,yr,10,140);
  fill(255);
  ellipse(399.5,348.25,10,10);
  if (keyCode == ' ') {
  end = 0;
    }
  }
  
  if (end != 1) {
  game();
  }
}

void game() {
  if (millis() < 10000) text(millis()/1000,375,80);
  if (millis() > 9999) text(millis()/1000,350,80);
  strokeWeight(5);
  noFill();
  beginShape();
  vertex(1,1);
  vertex(798,1);
  vertex(798,100);
  vertex(1,100);
  endShape(CLOSE);
  fill(255);
  
  if (speedX > 0) {
  speedX += 0.005;
  }
  if (speedX < 0) {
   speedX += -0.005;
  }
  
  
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
  noFill();
  rect(25,yl,10,140);
  rect(764,yr,10,140);
  
  posX += speedX;
  posY += speedY;
     if (posY > 589 || posY < 110) {
    speedY = -speedY;
     }
     
     if (posX < 45 && posX > 35) {
       if (yl < posY && posY < yl+140) {
         speedX = -speedX;
       }
       if (yl < posY && posY < yl+20) {
         speedY += -2.5;
       }
       if (yl < posY && posY < yl+50) {
         speedY += -1.5;
       }
       if (yl+120 < posY && posY < yl+140) {
         speedY += 2.5;
       }
       if (yl+90 < posY && posY < yl+140) {
         speedY += 1.5;
       }
     }
      if (posX > 754 && posX < 764) {
       if (yr < posY && posY < yr+140) {
         speedX = -speedX;
       }
       if (yr < posY && posY < yr+20) {
         speedY += -2.5;
       }
       if (yr < posY && posY < yr+50) {
         speedY += -1.5;
       }
       if (yr+120 < posY && posY < yr+140) {
         speedY += 2.5;
       }
       if (yr+90 < posY && posY < yr+140) {
         speedY += 1.5;
         }
       }
       
     if (posX > 809) {
       scoreLeft += 1;
       end = 1;
     }
     if (posX < -10) {
       scoreRight += 1;
       end = 1;
     }
  fill(255);
  ellipse(posX,posY,10,10);
  }