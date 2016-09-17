void setup() {
size(120,110);
background(255);
smooth();
}

int na = 150;
int nb = 240;
int nc = 250;

int ha = 250;
int hb = 200;
int hc = 200;

float x=0;
float y=0;

int superX = 0;
int superY = 0;

void keyPressed() {
  if (key == 'z') {
 ha = 100;
 hb = 100;
 hc = 100;
  }
  if (key == 'x') {
 na = 100;
 nb = 100;
 nc = 100;
  }
  if (keyCode == RIGHT) {
superX += 2;
  }
  if (keyCode == LEFT) {
superX -= 2;
  }
  if (keyCode == UP) {
superY -= 2;
  }
  if (keyCode == DOWN) {
superY += 2;
  }
}

void keyReleased() {
  if (key == 'z') {
 ha = 250;
 hb = 200;
 hc = 200;
  }
  if (key == 'x') {
    fill(150,240,250);
 na = 150;
 nb = 240;
 nc = 250;
  }
}

void draw() {
background(255);
//tail
fill(150,240,250);
beginShape();
vertex(105+superX,14+superY);
vertex(109+superX,15+superY);
vertex(90+superX,50+superY);
vertex(75+superX,45+superY);
endShape(CLOSE);

//bottom tail
beginShape();
fill(120,192,200);
vertex(109+superX,15+superY);
vertex(112+superX,18+superY);
vertex(97+superX,65+superY);
vertex(90+superX,50+superY);
endShape(CLOSE);

//left foot
fill(150,240,250);
beginShape();
vertex(21+superX,91+superY);
vertex(6+superX,84+superY);
vertex(6+superX,78+superY);
vertex(20+superX,63+superY);
vertex(30+superX,60+superY);
vertex(35+superX,70+superY);
vertex(21+superX,82+superY);
endShape(CLOSE);
line(21+superX,82+superY,6+superX,78+superY);
line(20+superX,63+superY,27+superX,62+superY);

//bottom left foot
beginShape();
fill(120,192,200);
vertex(35+superX,70+superY);
vertex(21+superX,82+superY);
vertex(21+superX,91+superY);
vertex(50+superX,80+superY);
endShape(CLOSE);

//body
fill(150,240,250);
beginShape();
vertex(23+superX,68+superY);
vertex(58+superX,78+superY);
vertex(64+superX,61+superY);
vertex(49+superX,50+superY);
vertex(35+superX,50+superY);
endShape(CLOSE);
line(58+superX,78+superY,51+superX,52+superY);

//bottom body
fill(120,192,200);
beginShape();
vertex(23+superX,68+superY);
vertex(53+superX,91+superY);
vertex(65+superX,94+superY);
vertex(58+superX,78+superY);
endShape(CLOSE);

//back
fill(250,200,200);
beginShape();
vertex(49+superX,50+superY);
vertex(64+superX,61+superY);
vertex(58+superX,78+superY);
vertex(97+superX,62+superY);
vertex(96+superX,47+superY);
vertex(54+superX,35+superY);
endShape(CLOSE);

//bottom back
fill(200,160,160);
beginShape();
vertex(58+superX,78+superY);
vertex(97+superX,62+superY);
vertex(100+superX,75+superY);
vertex(65+superX,94+superY);
endShape(CLOSE);

//right foot
fill(150,240,250);
beginShape();
vertex(65+superX,94+superY);
vertex(67+superX,103+superY);
vertex(86+superX,107+superY);
vertex(86+superX,99+superY);
vertex(101+superX,77+superY);
vertex(118+superX,78+superY);
vertex(111+superX,68+superY);
vertex(82+superX,64+superY);
endShape(CLOSE);
line(65+superX,94+superY,86+superX,99+superY);
line(101+superX,77+superY,82+superX,64+superY);

//bottom right foot
fill(120,192,200);
beginShape();
vertex(86+superX,107+superY);
vertex(86+superX,99+superY);
vertex(101+superX,77+superY);
vertex(118+superX,78+superY);
vertex(118+superX,88+superY);
endShape(CLOSE);



//nose
fill(na,nb,nc);
beginShape();
vertex(2+superX,50+superY);
vertex(11+superX,34+superY);
vertex(28+superX,36+superY);
vertex(33+superX,40+superY);
vertex(15+superX,56+superY);
vertex(11+superX,55+superY);
endShape(CLOSE);
line(11+superX,55+superY,28+superX,36+superY);
//bottom nose
fill(120,192,200);
beginShape();
vertex(33+superX,40+superY);
vertex(39+superX,52+superY);
vertex(15+superX,56+superY);
endShape(CLOSE);


//head
fill(ha,hb,hc);
beginShape();
vertex(11+superX,34+superY);
vertex(24+superX,16+superY);
vertex(42+superX,2+superY);
vertex(59+superX,5+superY);
vertex(65+superX,23+superY);
vertex(55+superX,25+superY);
vertex(47+superX,17+superY);
vertex(35+superX,17+superY);
vertex(35+superX,28+superY);
vertex(38+superX,34+superY);
vertex(33+superX,40+superY);
vertex(28+superX,36+superY);
endShape(CLOSE);
line(28+superX,36+superY,35+superX,28+superY);
line(59+superX,5+superY,47+superX,17+superY);
//bottom head
fill(200,160,160);
beginShape();
vertex(65+superX,23+superY);
vertex(55+superX,25+superY);
vertex(38+superX,34+superY);
vertex(33+superX,40+superY);
vertex(39+superX,52+superY);
vertex(49+superX,50+superY);
vertex(64+superX,33+superY);
endShape(CLOSE);
  //eye
fill(255);
beginShape();
vertex(55+superX,25+superY);
vertex(50+superX,32+superY);
vertex(38+superX,34+superY);
vertex(35+superX,28+superY);
vertex(35+superX,17+superY);
vertex(47+superX,17+superY);
endShape(CLOSE);
 
 fill(0);
 if(mouseX/24>x) {
   x+=.5;
 }
  if(mouseX/24<x) {
   x-=.5;
 }
  if(mouseY/22>y) {
   y+=.5;
 }
  if(mouseY/22<y) {
   y-=.5;
 }
 ellipse(41 + x+superX,23 + y+superY,4,3);
}