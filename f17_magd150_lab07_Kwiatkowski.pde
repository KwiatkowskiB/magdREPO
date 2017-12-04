import processing.video.*; 
import processing.sound.*;

PImage mirror;
PImage pot;

Movie motivation;
SoundFile wind;
float volume = .65;

void setup(){
  size(1080, 720);
  
  //Importing all of the media files(JPG, MP4 and MP3 Files)
  mirror = loadImage("museum-mirror.jpg");
  pot = loadImage("pottery.jpg");
  motivation = new Movie(this, "Shia.mp4");
  wind = new SoundFile(this, "wind.mp3");
  
  //Looping the video that plays in the 
  //mirror so that it doesn't end
  motivation.loop();
  wind.loop();
}
  
  void movieEvent(Movie motivation){
    motivation.read();
  
}

void draw(){
  //Setting the volume to the variable "volume"
  wind.amp(volume);
  background(0);
  tint(0, 255, 255);
  image(mirror, 0, 0, width, height);
  //image(pot, 250, 210, width / 2.25, height / 1.9);
  
  //Displaying the MP4 video and sizing it and locating it to 
  //fit inside of the mirror
  image(motivation,320, 190 , 480, 370);


}