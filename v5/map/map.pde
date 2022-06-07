//file launched when the user starts solving murder mystery and they are protag

import processing.sound.*;
SoundFile file;

PImage map;
PShape protag;
PShape antag;

int musicX = 10;
int musicY = 685;
int musicSize = 35;
boolean musicOn = true;

void setup(){
  //launches map as bkg
  size(495,727);
  map = loadImage("map.jpg");
  
  //creates protag and antag shapes
  protag = createShape(ELLIPSE, 327,546,8,8);
  protag.setFill(color(0,255,0));
  protag.setStroke(true);
  antag = createShape(ELLIPSE, 240,460,8,8);
  antag.setFill(color(255,0,0));
  antag.setStroke(true);
  
  //loads file based on the file name
  file = new SoundFile(this,"Departure.wav");
  file.play();
  //changes volume level (number between 0 and 1)
  file.amp(1);
}

void draw(){
  background(map);
  
  //shows protag current location
  shape(protag);
  //shows antag current location
  shape(antag);
  
  //create music button
  fill(0, 85);
  noStroke();
  rect(musicX, musicY, musicSize, musicSize);
  fill(255);
  //displays pause or play depending on music status
  if (musicOn) {
    text("pause", musicX + 2, musicY + 20);
  }
  else {
    text("play", musicX + 5, musicY + 20);
  }
  if (mousePressed) {
    println(mouseX, mouseY);
  }
}

void mousePressed() {
  //checks for music button being clicked
  if ( overMusic(musicX, musicY, musicSize+10, musicSize) ){
    if (musicOn) {
      musicOn = false;
      file.pause();
    }
    else {
      musicOn = true;
      file.play();
    }
  }
}

//checks if mouse is hovering over the music button
boolean overMusic(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
