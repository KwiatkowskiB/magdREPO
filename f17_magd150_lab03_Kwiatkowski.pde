int y = 50;
int y1 = 1;
float a;
float b;

void setup() {
  size(1000,800);
  surface.setResizable(true); 
  background(150);  
  frameRate(200);
}

void draw() {
   println("width: " + width); 
   println("height: " + height);
   
     
  //Creates all bubbles in proportion to the screen size
  background(150);
  strokeWeight(1);
  
  fill(150);  
  

  ellipse(width / 20, y, 100, 100);
  ellipse(width / 6, y, 100, 100);
  ellipse(width / 3 , y, 100, 100);
  ellipse(width / 2 , y, 100, 100);
  ellipse(width / 1.5, y, 100, 100);
  ellipse(width / 1.2 , y, 100, 100);


//checking for boundaries and moving the bubbles

  y = y + y1;
  
  if (y + 25 > height){
    
    y1 = -1; 
  }
  if(y - 25 < 0){
    
    y1 = 1;
  }
  
  beginShape();
  fill(50);
  strokeWeight(4);
  vertex(width - 103, 0);
  vertex(width - 2, 0);
  vertex(width - 2 , height);
  vertex(width - 103, height);
  endShape(CLOSE);
    
  float mx = constrain(mouseX, width - 103, width - 100); 
  float my = constrain(mouseY, 0, height - 100);
  
  
   ellipseMode(CORNER);
   fill(50);
   b = map(mouseY, 0, height, 0, 255);
   stroke(255, 0, b);
   strokeWeight(5); 
   ellipse(mx, my, 100, 100);
   ellipseMode(CENTER);
   
   //Reset stroke color
   stroke(0);  
  
  println("Mouse X: " + mouseX);
  println("Mouse Y: " + mouseY);
  
  //print width of rectangle based on window size
  println("The width of the window is: " + dist(width, 0, 0, 0));

  println("Frame Rate: " + frameRate);  
  
}