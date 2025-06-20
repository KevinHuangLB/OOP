import processing.javafx.*;

import processing.javafx.*;

Rain myRain;
Rain[] myRains;
int numRain;

Cloud myCloud;
Cloud[] myClouds;
int numCloud;

Flower myFlower;
Flower[] myFlowers;
int numFlower;

color white = #FFFFFF;
color skyBlue = #87CEEB;
color grassGreen = #7BB369;
color red       = #FF0000;
color green     = #00FF00;
color yellow    = #D4AF37;
color blue      = #0000FF;
color darkGreen = #006400;
color brown     = #8B4513;
color lightYellow = #EEDD82;
color rainCloud = #F0F8FF;
color rainSky =   #B0E0E6;
color rainColor = #3B6BA5;

void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  noStroke();

  numRain = 50;
  myRains = new Rain[numRain];

  for (int i = 0; i < numRain; i++) {
    myRains[i] = new Rain();
  }


  numCloud = 40;
  myClouds = new Cloud[numCloud];

  for (int j = 0; j < numCloud; j++) {
    myClouds[j] = new Cloud();
  }
  
  numFlower = 20;
  myFlowers = new Flower[numFlower];
  
  for (int k = 0; k < numFlower; k++){
    myFlowers[k] = new Flower();
  }
}
void draw() {
  background(rainSky);
  for (int i = 0; i < numRain; i++) {
    myRains[i].show();
    myRains[i].act();
  }
  for (int j = 0; j < numCloud; j++) {
    myClouds[j].show();
    myClouds[j].act();
  }
  for (int k = 0; k < numFlower; k++) {
    myFlowers[k].show();
    myFlowers[k].act();
  }
}
