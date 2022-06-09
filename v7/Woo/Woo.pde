import processing.sound.*;
SoundFile file;

PShape protag;
PShape notepad;
PImage map;
int x = 50;
int y = 50;

int buttonSize = 100;

int musicX = 100;
int musicY = 600;
boolean musicOn = true;

int notesX = 250;
int notesY = 600;
boolean notesOn = false;

int padX = 275;
int padY = 75;

int mapBX = 400;
int mapBY = 600;

void setup() {
  size(1000,750); 
  protag = createShape(ELLIPSE, 125, 100, 8, 8);
  protag.setFill(color(0,255,0));
  protag.setStroke(true);
  
  notepad = createShape(RECT, padX+1000, padY, 300, 500);
  notepad.setFill(color(255, 255, 0));
  notepad.setStroke(true);
  notepad.setStrokeWeight(4);
  
  map = loadImage("map.jpg");
  
  //loads file based on the file name
  file = new SoundFile(this,"Departure.wav");
  file.play();
  //changes volume level (number between 0 and 1)
  file.amp(1);
  
}

void draw() {
  background(0, 0, 50);
  for (int i = 50; i < 750;i += 200) {
    rect(i, 50, 150, 100);
    rect(i,200, 150, 100);
    fill(255);
  }
  
  shape(protag);
  shape(notepad);
  image(map, mapBX+1000, mapBY);
  
   //create music button
  fill(255);
  noStroke();
  rect(musicX, musicY, buttonSize, buttonSize);
  fill(0);
  
  //create notes button
  fill(255);
  noStroke();
  rect(notesX, notesY, buttonSize, buttonSize);
  fill(0);
  text("Notes", notesX + 0.625*(buttonSize/2), notesY + buttonSize/2);
  
  //create map button
  fill(255);
  noStroke();
  rect(mapBX, mapBY, buttonSize, buttonSize);
  fill(0);
  text("Map", mapBX + buttonSize/2, mapBY + buttonSize/2);
  
  //displays pause or play depending on music status
  if (musicOn) {
    text("Pause", musicX + 0.625*(buttonSize/2), musicY + buttonSize/2);
  }
  else {
    text("Play", musicX + buttonSize/2, musicY + buttonSize/2);
  }
  fill(255);
}

boolean hover(int xcor, int ycor, int width, int height) {
  if (mouseX >= xcor && mouseX <= xcor+width && 
      mouseY >= ycor && mouseY <= ycor+height) {
    return true;
  } else {
    return false;
  }
}

void keyPressed() {
   if (keyCode == RIGHT) {
     if (x < 650) {
       protag.translate(200, 0);
       x += 200;
     }
     else {
       protag.translate(-600, 150);
       x = 50;
       y = 50;
     }
   }
   
   if (keyCode == LEFT) {
     if (x > 50) {
       protag.translate(-200, 0);
       x -= 200;
     }
     else {
       protag.translate(600, -150);
       x = 650;
       y = 50;
     }
   }
  
}

void mousePressed() {
  //checks for music button being clicked
  if ( hover(musicX, musicY, buttonSize+10, buttonSize) ){
    if (musicOn) {
      musicOn = false;
      file.pause();
    }
    else {
      musicOn = true;
      file.play();
    }
  }
  
  if (hover(notesX, notesY, buttonSize, buttonSize)) {
     if (notesOn) {
       notepad.translate(1000, 0); 
       notesOn = false;
     }
     else {
       notepad.translate(-1000, 0);  
       notesOn = true;
     }
  }
}
