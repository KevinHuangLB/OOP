import processing.javafx.*;

Grass myGrass;
Grass[] myGrasses;
int numGrass;

color skyBlue = #87CEEB;
color grassGreen = #7BB369;
color red       = #FF0000;
color green     = #00FF00;
color yellow    = #D4AF37;
color blue      = #0000FF;
color darkGreen = #006400;
color brown     = #8B4513;
color lightYellow   = #EEDD82;

void setup() {
  size(800,800,FX2D);
  rectMode(CENTER);
  noStroke();
  
  numGrass = 50;
  myGrasses = new Grass[numGrass];
  
  for (int i = 0; i < numGrass; i++){
    myGrasses[i] = new Grass();
  }
}
void draw() {
  background(skyBlue);
  for (int i = 0; i < numGrass; i++){
    myGrasses[i].show();
    myGrasses[i].act();
  }
}
