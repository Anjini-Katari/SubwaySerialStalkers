//file launched when the user starts solving murder mystery and they are protag
import processing.sound.*;
SoundFile file;
PImage map;
PShape protag;
PShape antag;
boolean musicOff = false;
int musicX, musicY;
int musicSize = 25;

void setup(){
  //launches map as bkg
  size(495,727);
  map = loadImage("map.jpg");
  background(map);
  
  //creates protag and antag shapes
  protag = createShape(ELLIPSE, 400,600,8,8);
  protag.setFill(color(255,0,222));
  protag.setStroke(true);
  antag = createShape(ELLIPSE, 350,540,8,8);
  antag.setFill(color(255,0,222));
  antag.setStroke(true);
  
  //creates music button
  musicX = 10;
  musicY = 680;
  rect(musicX, musicY, musicSize, musicSize);
  
  //loads file based on the file name
  file = new SoundFile(this,"Departure.wav");
  file.play();
  
  //changes volume level (number between 0 and 1)
  file.amp(1);
}

void draw(){
  //update(mouseX, mouseY);
  if (musicOff) {
    file.pause();
  }
  //shows protag current location
  shape(protag);
  //shows antag current location
}


//void update(int x, int y) {
//  if ( overMusic(musicX, musicY, musicSize, musicSize) ) {
//    musicOff = true;
//  }
//}

void mousePressed() {
  //if musicOff is true, then the volume is turned off
  if (musicOff) {
    //file.pause();
  }
}

////checks if music button is clicked so user can turn music on and off if they please
//boolean overMusic(int x, int y, int width, int height) {
//  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
//    return true;
//  }
//  else {
//    return false;
//  }
//} //end overMusic()

boolean overMusic(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
