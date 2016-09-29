void setup() {
  size(480,120);
}

void draw() {
  background(176,204,226);
  for (int i = 35; i < width + 40; i += 40) {
    int one = int(random(0,255));
    int two = int(random(0,255));
    int three = int(random(0,255));
    int gray = int(random(0,102));
    float scalar = random(0.25, 1.0);
    owl(i,110, one, two, three, gray, scalar);
  }
}

void owl(int x, int y, int one, int two, int three, int g, float s) {
  pushMatrix();
  translate(x,y);
  scale(s);
  stroke(one,two,three);
  strokeWeight(70);
  line(0,-35,0,-65);
  noStroke();
  fill(255);
  ellipse(-17.5,-65,35,35);
  ellipse(17.5,-65,35,35);
  arc(0,-65,70,70,0,PI);
  fill(51,51,30);
  ellipse(-14,-65,8,8);
  ellipse(14,-65,8,8);
  quad(0,-58,4,-51,0,-44,-4,-51);
  popMatrix();
}