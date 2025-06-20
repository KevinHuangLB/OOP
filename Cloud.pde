class Cloud {
  float x, y, size, dist,vx;
  float distPositionDetermine = random(100);
  float distPositionDetermine2 = random(100);
  boolean growing = true;
  float growSpeed;

  Cloud() {
    x= random(0, width);
    y = random(0, height / 3);
    vx = random(1,3);
    size = random(80, 100);
    dist = random(10, 15);
    growSpeed = random(0.25,1);
  }
  void show() {
    fill(rainCloud);
    ellipse(x, y, size, size/2);
    if (distPositionDetermine < 25) {
      ellipse(x + dist, y+dist, size, size/2);
    } else if (distPositionDetermine < 50) {
      ellipse(x + dist, y - dist, size, size/2);
    } else if (distPositionDetermine < 75) {
      ellipse(x - dist, y + dist, size, size/2);
    } else {
      ellipse(x - dist, y- dist, size, size/2);
    }

    if (distPositionDetermine2 < 25) {
      ellipse(x + dist, y+dist, size, size/2);
    } else if (distPositionDetermine2 < 50) {
      ellipse(x + dist, y - dist, size, size/2);
    } else if (distPositionDetermine2 < 75) {
      ellipse(x - dist, y + dist, size, size/2);
    } else {
      ellipse(x - dist, y- dist, size, size/2);
    }
  }

  void act() {
    if (growing == true) {
      size += growSpeed;
      if (size >= 120) {
        growing = false;
      }
    } else {
      size -= growSpeed;
      if (size <= 60) {
        growing = true;
      }
    }
    x += vx;
    if (x > width + size){
      x = -size;
    }
    
  }
}
