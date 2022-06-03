PImage map;
PShape protag;
PShape antag;

import processing.sound.*;
SoundFile file;

void setup(){
  size(513,745);
  map = loadImage("map.jpg");
  
  //this loads the file based on the file name
  file = new SoundFile(this,"And Then there Were None Soundtrack Sequence 01(1).wav");
  file.play();
  
  //this changes the volume level (number between 0 and 1)
  file.amp(1);
}

void draw(){
  background(map);
}
