size(120,110);
background(255);

//tail
fill(150,240,250);
beginShape();
vertex(105,14);
vertex(109,15);
vertex(90,50);
vertex(75,45);
endShape(CLOSE);

//bottom tail
beginShape();
fill(120,192,200);
vertex(109,15);
vertex(112,18);
vertex(97,65);
vertex(90,50);
endShape(CLOSE);

//left foot
fill(150,240,250);
beginShape();
vertex(21,91);
vertex(6,84);
vertex(6,78);
vertex(20,63);
vertex(30,60);
vertex(35,70);
vertex(21,82);
endShape(CLOSE);
line(21,82,6,78);
line(20,63,27,62);

//bottom left foot
beginShape();
fill(120,192,200);
vertex(35,70);
vertex(21,82);
vertex(21,91);
vertex(50,80);
endShape(CLOSE);

//body
fill(150,240,250);
beginShape();
vertex(23,68);
vertex(58,78);
vertex(64,61);
vertex(49,50);
vertex(35,50);
endShape(CLOSE);
line(58,78,51,52);

//bottom body
fill(120,192,200);
beginShape();
vertex(23,68);
vertex(53,91);
vertex(65,94);
vertex(58,78);
endShape(CLOSE);

//back
fill(250,200,200);
beginShape();
vertex(49,50);
vertex(64,61);
vertex(58,78);
vertex(97,62);
vertex(96,47);
vertex(54,35);
endShape(CLOSE);

//bottom back
fill(200,160,160);
beginShape();
vertex(58,78);
vertex(97,62);
vertex(100,75);
vertex(65,94);
endShape(CLOSE);

//right foot
fill(150,240,250);
beginShape();
vertex(65,94);
vertex(67,103);
vertex(86,107);
vertex(86,99);
vertex(101,77);
vertex(118,78);
vertex(111,68);
vertex(82,64);
endShape(CLOSE);
line(65,94,86,99);
line(101,77,82,64);

//bottom right foot
fill(120,192,200);
beginShape();
vertex(86,107);
vertex(86,99);
vertex(101,77);
vertex(118,78);
vertex(118,88);
endShape(CLOSE);

//nose
fill(150,240,250);
beginShape();
vertex(2,50);
vertex(11,34);
vertex(28,36);
vertex(33,40);
vertex(15,56);
vertex(11,55);
endShape(CLOSE);
line(11,55,28,36);
//bottom nose
fill(120,192,200);
beginShape();
vertex(33,40);
vertex(39,52);
vertex(15,56);
endShape(CLOSE);
//head
fill(250,200,200);
beginShape();
vertex(11,34);
vertex(24,16);
vertex(42,2);
vertex(59,5);
vertex(65,23);
vertex(55,25);
vertex(38,34);
vertex(33,40);
vertex(28,36);
endShape(CLOSE);
line(28,36,35,28);
line(59,5,47,17);
//bottom head
fill(200,160,160);
beginShape();
vertex(65,23);
vertex(55,25);
vertex(38,34);
vertex(33,40);
vertex(39,52);
vertex(49,50);
vertex(64,33);
endShape(CLOSE);
//eye
fill(255);
beginShape();
vertex(55,25);
vertex(50,32);
vertex(38,34);
vertex(35,28);
vertex(35,17);
vertex(47,17);
endShape(CLOSE);
fill(0);
ellipse(43,24,4,3);