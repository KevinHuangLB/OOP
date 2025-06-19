class Grass {
  float x, y, vx, vy, size;
  color bladeColor;

  Grass() {
    x= random(0, width);
    y = random(0, height);
    vx = random(3, 5);
    vy = random(2, 5);
    size = vx;

    float colorDetermine = random(100);
    if (colorDetermine < 10) bladeColor = lightYellow;
    if (colorDetermine < 80 && colorDetermine > 10) bladeColor = grassGreen;
    if (colorDetermine > 80) bladeColor = yellow;
  }

  void show() {
    fill(bladeColor);
    rect(x, y, 2, size + 9);
  }
  void act() {
    x += vx;
    y += vy;
    if (x > width+size) {
      x = -size;
    }
    if (y > height+size) {
      y = -size;
    }
  }
}
