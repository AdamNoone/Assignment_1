class Radar

{

  float cx, cy;

  float radius;

  float theta;

  float speed;

  float frequency;

  color c;

  

  Radar(float cx, float cy, float radius, float frequency, color c)

  {

    this.cx = cx;

    this.cy = cy;

    this.radius = radius;

    this.frequency = frequency;

    this.speed = (TWO_PI / 60.0) * frequency;

    this.theta = 0;

    this.c = 255;

  }

  

  void update()

  {

    theta += speed;

  }

  

  void render()

  {

    stroke(0, c, 0);

    
    fill (20);
    ellipse(cx, cy, radius * 2, radius * 2);
    ellipse(cx, cy, radius * 1.5, radius * 1.5);
    ellipse(cx, cy, radius * 1, radius * 1);
    ellipse(cx, cy, radius * 0.5, radius * 0.5);
    line(cx,cy - radius,cx,cy + radius);
    line(cx - radius,cy,cx + radius,cy);

    int trailLength = 10;

    float greenIntensity = 255 / (float)trailLength;

    for(int i = 0 ; i < trailLength ; i ++)

    {

      stroke(0, i * greenIntensity, 0);

      float x = cx + sin(theta + i * speed) * radius;

      float y = cy -cos(theta + i * speed) * radius;

      line(cx, cy, x, y);

    }

  }

}