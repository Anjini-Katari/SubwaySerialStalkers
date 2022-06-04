//file launched when the user starts solving murder mystery and they are protag
import processing.sound.*;
SoundFile file;
PImage map;
PShape protag;
PShape antag;
int musicX = 10;
int musicY = 680;
int musicSize = 25;
boolean musicOn = true;

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
  
  //create music button
  rect(musicX, musicY, 35, 25);
  fill(0);
  text("pause", musicX + 2, musicY + 10);
  
  //loads file based on the file name
  file = new SoundFile(this,"Departure.wav");
  file.play();
  //changes volume level (number between 0 and 1)
  file.amp(1);
}

void draw(){
  //shows protag current location
  shape(protag);
  //shows antag current location
  shape(antag);
}

void mousePressed() {
  //checks for music button being clicked
  if (musicOn) {
    musicOn = false;
    file.pause();
  }
  else {
    musicOn = true;
    file.play();
  }
}
