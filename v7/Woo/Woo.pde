import processing.sound.*;
SoundFile file;

int boxWidth = 250;
int boxHeight = 50;

// what ur currently typing
String typing = "";
//once u press enter, this is stored -> updates whenever u press enter/return
String entered = "";
//current q that u have to answer or j info display
String prompt = "";

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
boolean mapOn = false;

Train tr;

void setup() {
  size(1000,750); 
  textSize(16);
  
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
  
  tr = new Train();
}

void draw() {
  background(0, 0, 50);
  
  text(prompt, 500, 350);
  //textbox
  fill(255);
  rect(300, 375, 375, 50);
  fill(0);
  textAlign(LEFT, CENTER);
  text(typing, 315, 395);
  
  textAlign(CENTER);
  fill(255);
  
  prompt = "Hey there. You ready to play?";
  if (entered.toLowerCase().equals("yes")){
    prompt = "You better be. Entering game now...";
    
    for (int i = 50; i < 750;i += 200) {
    rect(i, 50, 150, 100);
    rect(i,200, 150, 100);
    fill(255);
  }
  
  shape(protag);
  shape(notepad);
  if (mapOn) {
   image(map, 175, 10); 
  }
  else {
   image(map, 1175, 10); 
  }
  
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
  
  //shows current train car
  fill(0, 255, 0);
  rect(50, 500, 300, 50);
  fill(255, 0, 0);
  text("Current Car Number: " + Integer.toString(tr.getCarNum()), 175, 525);
  }
  else if (entered.toLowerCase().equals("no")){
    prompt = "Ok...bye then.";
    exit();
  }
}

void intro() {
  ////textbox
  //fill(255);
  //rect(300, 375, 375, 50);
  //fill(0);
  //textAlign(LEFT, CENTER);
  //text(typing, 315, 395);
  
  //textAlign(CENTER);
  //fill(255);
  
  //prompt = "Hey there. You ready to play?";
  //if (entered.toLowerCase().equals("yes")){
  //  prompt = "You better be. Entering game now...";
  //}
  //else if (entered.toLowerCase().equals("no")){
  //  prompt = "Ok...bye then.";
  //  exit();
  //}
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
  /* makes sure you don't go out of the string lenght and putting this 
  if statement up front allows for multiple backspaces */
  if ((key == BACKSPACE) && (typing.length() > 0)) {
      typing = typing.substring(0, typing.length() - 1);
   }
   else if (key == '\n' || key == ENTER) {
      // If the return key is pressed, save the String and clears typing and clears up current prompt 
      entered = typing;
      // A String can be cleared by setting it equal to ""
      prompt = typing = "";
    } 
    else {
      // Otherwise, concatenate the String
      // Each character typed by the user is added to the end of the String variable.
      typing = typing + key;
    }
   
  if (keyCode == RIGHT && tr.getCarNum() != tr.getSize()) {
     if (x < 650) {
       protag.translate(200, 0);
       x += 200;
       tr.moveCar(1);
     }
     else {
       protag.translate(-600, 150);
       x = 50;
       y = 50;
       tr.moveCar(1);
     }
   }
   
   if (keyCode == LEFT && tr.getCarNum() != 1) {
     if (x > 50) {
       protag.translate(-200, 0);
       x -= 200;
       tr.moveCar(-1);
     }
     else {
       protag.translate(600, -150);
       x = 650;
       y = 50;
       tr.moveCar(-1);
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
  if (hover(mapBX, mapBY, buttonSize, buttonSize)) {
    mapOn = !mapOn;
  }
}
