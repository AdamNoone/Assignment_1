

// create a Planet Class.
class Planet {
  // variables for the x and y of each Planet.
  float x;
  float y;
  // z variable wil be used to change planet postion on screen 
  float z;
 
 float col; //used to deterimne the color of each planet
 
   
  
  Planet(float colour) {
    
    x = random(-900, 900);//planets spawn at random point on x-axis
    
    y = random(-width/2, height/2);//planets spawn at random point on y-axis
    
    z = random(width/2); //z  used to make Planets move forward towards the player and in a random point on x-axis
    
    
    col = colour; //the colour of the plant is calculated in main using a constructor
    
    
   
   
  }
  


  void update() {
   
    z = z - speed;//this line is used to make Planets appear bigger as thay get closer to the player
    
    
    
    // When the Planet has gone passed the user (ie its behind them) we reset so it appears on the screen again as a new Planet
    if (z < 1) { //if planets has gone past player
      z = width/2;// z set to centre of screen 
      x = random(-width/2, width/2); //makes planet spawn at random point on x-axis
      y = random(-height/2, height/2); //makes planet spawn at random point on y-axis
      
    }
  }

  void show() {
    
    // The planet constuctor is Planet(float colour) ,so a value is passed from Draw() which is from 1 to 4 to determine planet color.
    if (col ==1)//if 1 passed
      {
        fill(218,165,32);
      
      }
       if (col == 2)//if 2 passed
      {
        fill(240,230,140);
      
      }
       if (col == 3)//if 3 passed
      {
        fill(154,255,154);
      
      }

    if (col == 4)//if 4 passed
      {
        fill(128 , 0 , 0);
      
      }
       if (col == 0)
      {
        fill(205 , 150,  205);
      
      }

    
    
    
    noStroke();

    // use map to get the new Planet positions at each frame
    // using map means are sure the new coordinates "sx" and "sy" move faster at each frame
    
    

    float sx = map(x / z, 0, 1, 0, width/2);//map planet positions to a range of 0 - 1 (inside a range of 0 - width/2.)
    float sy = map(y / z, 0, 1, 0, height/2);//map planet positions to a range of 0 - 1 (inside a range of 0 - height/2.)

    // I use the z value to increase the Planet size between a range from 0 to 16.
    float r = map(z, 0, width/2, 200, 0);
    ellipse(sx, sy, r, r);//draw the planets
    
  


    stroke(255);
    

  }
}