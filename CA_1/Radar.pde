class Radar

{

  float cx, cy; // x and y variables for position of radar
  float radius;// the radar radius (size)
  float theta;//angle of radar update line
  float speed;//speed of radar update 
  float frequency;
  color c;//color of radar

  

  Radar(float cx, float cy, float radius, float frequency, color c)//radar cobnstructor

  {
    
    //gets the values passed from draw () ,put them in each local var
    this.cx = cx;
    this.cy = cy;
    this.radius = radius;
    this.frequency = frequency;
    this.speed = (TWO_PI / 60.0) * frequency;
    this.theta = 0;
    this.c = 255;

  }

  

  void update()//funtion to make radar move

  {

    theta += speed;//add speed to the angle of the line to make the radar move

  }

  

  void render()//draws the radar

  {

    stroke(0, c, 0);//color of radar

    
    fill (20);
    
    //draw the 4 circles in the radar 
    ellipse(cx, cy, radius * 2, radius * 2);
    ellipse(cx, cy, radius * 1.5, radius * 1.5);
    ellipse(cx, cy, radius * 1, radius * 1);
    ellipse(cx, cy, radius * 0.5, radius * 0.5);
    
    //draw the radar crosshair
    line(cx,cy - radius,cx,cy + radius);
    line(cx - radius,cy,cx + radius,cy);


    int trailLength = 12;//used to set how many lines aer drawn after 1st radar line 
    float greenIntensity = 255 / (float)trailLength; //used to make each line after the 1st slightly darker 
    for(int i = 0 ; i < trailLength ; i ++)//for loop to draw lines

    {

      stroke(0, i * greenIntensity, 0);//set stroke as calulated above
      float x = cx + sin(theta + i * speed) * radius; //calc X values
      float y = cy -cos(theta + i * speed) * radius; //calc Y values
      line(cx, cy, x, y); //draw the line from centre to x,y calculated above.

    }

  }

}