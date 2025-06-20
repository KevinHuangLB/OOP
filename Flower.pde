class Flower {
  float x, y, size, stemColorDetermine;
  int petalColorDetermine;
  int flowerCenterColorDetermine;
  float petalSize;
  float distPetal;
  color c;
  //float d = dist(mouseX,mouseY,x,y - 25);
  float normalSize;
  float maxSize = 50;
  float minDist = 35;
  float minDistPetal;
  float normalSizePetal;
  float maxSizePetal;

  Flower() {
    x = random(0, width);
    y = height - 25;
    size = random(20, 30);
    stemColorDetermine = random(100);
    petalColorDetermine = int(random(8));
    flowerCenterColorDetermine = int(random(5));
    petalSize = size / 1.5;
    distPetal = size / 2;
    minDistPetal = 35;
    
    normalSize = size;
    normalSizePetal = petalSize;
    maxSizePetal = 50 / 1.5;
  }
  void show() {
    if (stemColorDetermine < 33) fill(mintyGreen);
    if (stemColorDetermine < 66 && stemColorDetermine > 33) fill(mutedGreen);
    if (stemColorDetermine > 66) fill(paleLeafGreen);
    rect(x, y, 5, 50);

    fill(petalColors[petalColorDetermine]);
    circle(x - distPetal, y-25, petalSize);
    circle(x + distPetal, y - 25, petalSize);
    circle(x, y - 25 - distPetal, petalSize);
    circle(x, y - 25 + distPetal, petalSize);

    fill(flowerCenterColors[flowerCenterColorDetermine]);
    circle(x, y - 25, size);
  }
  void act() {
    //if (mouseY > 600) {
    //  size = int((500 / dist(mouseX, mouseY, x, (y - 25))));
    //  petalSize = int((500 / dist(mouseX,mouseY,x,(y - 25))));
    //}
    float d = dist(mouseX,mouseY,x,y - 25);
    if (d < minDist){
      float growth = map(d,0,minDist,maxSize,normalSize);
      float growthPetal = map(d,0,minDistPetal,maxSizePetal,normalSizePetal);
      size = growth;
      petalSize = growthPetal * 1.65;
    } else{
      size = normalSize;
      petalSize = normalSizePetal;
    }
  }
}
