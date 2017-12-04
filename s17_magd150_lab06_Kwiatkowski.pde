screenLine Line1;
screenLine Line2;


void setup(){
  size(800, 800);
  background(0);
  frameRate(10);
  Line1 = new screenLine(400, 400);
  Line2 = new screenLine(250, 400);
}

void draw(){
  Line1.drawX();
  Line1.drawY();
  Line1.setInitial();
  
  Line2.drawX();
  Line2.drawY();
  Line2.setInitial();
  }
    
  
  