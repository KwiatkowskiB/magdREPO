void setup() {

  background(5);
  size(800, 800);
    
}

void draw() {
  for (int i = 0; i < 1000; i = i+30) {
  for (int j = 0; j < 1000; j = j+30) {
    stroke(255);
    point(i, j);
  }
  }
  
//Start to creating moon 
ellipseMode(CORNER);
fill(255);
ellipse(50, 50, 50, 50);
ellipseMode(CENTER);

noStroke();
fill(255);
ellipse(400, 800, 1200, 900);


fill(220);
ellipse(400, 800, 1200, 880);

fill(190);
ellipse(400, 800, 1200, 870);

fill(160);
ellipse(400, 800, 1200, 860);

fill(130);
ellipse(400, 800, 1200, 850);

fill(100);
ellipse(400, 800, 1200, 840);

fill(70);
ellipse(400, 800, 1200, 830);

fill(40);
ellipse(400, 800, 1200, 820);

fill(25);
ellipse(400, 800, 1200, 800);


ellipseMode(CENTER);

//End moon drawing



//Start Space Ship drawing

fill(100);
stroke(80);
ellipse(650,200, 400,200);

fill(0);
rect(560, 165, 20, 30);

fill(0);
rect(590, 165, 20, 30);

fill(0);
rect(620, 165, 20, 30);

fill(0);
rect(650, 165, 20, 30);

fill(0);
rect(680, 165, 20, 30);

fill(0);
rect(710, 165, 20, 30);

fill(0);
rect(740, 165, 20, 30);

fill(0);
rect(770, 165, 20, 30);

fill(0);
rect(750, 100, 80, 50);

fill(0);
rect(750, 240, 80, 50);

stroke(0);
line(800, 210, 450, 210);

line(550, 210,550, 100);

 
}