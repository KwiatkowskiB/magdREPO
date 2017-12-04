import processing.pdf.*;

boolean record;
String [] lines;
String sourceFile = "motivational.txt"; 

PFont encourage;
PFont niceWords;
float s = 1;
int r = 0;

void setup(){
  size(800, 800);
   
  //Creating 2 different fonts to display onto my sketch
  encourage = createFont("Arial-BoldMT-48.vlw", 48);
  niceWords = createFont("niceWords-48.vlw", 48);
  
  textAlign(CENTER, CENTER);
  textSize(48);
  
  //Setting the imported text file to an array of lines
  lines = loadStrings(sourceFile);

}
void draw(){
  if(record){
  beginRecord(PDF, "kwiatkowski.pdf");
  }

  background(0, 0, 255);
  
  //Creating the rotation for one of the text objects
  //And also creating the zooming effect for the other 
  //object
  s = s + .01;
  r += 1;
  
  pushMatrix();
  fill(0, 255, 0);
  translate(width / 2, height / 4);
  scale(s);
  textFont(encourage);
  text("YOU CAN DO IT!", 0, 0);
  popMatrix();
  
  pushMatrix();
  fill(255,0,0);
  translate(width /2 , height / 1.5);
  rotate(radians(r));
  textFont(niceWords);
  text("You are Amazing", 0, 0);
  popMatrix();
  
  pushMatrix();
  fill(255);
  translate(width /2, height - 30);
  text(lines[0], 0, 0);
  popMatrix();
  
  if(s > 2){
    s = s * -1;
    
    if (record){
      endRecord();
      exit();
    }
  }
}
      
      void mousePressed(){
        if(mouseButton == RIGHT){
          record = true;
        }
      
    }
  




  
  
  
  
  