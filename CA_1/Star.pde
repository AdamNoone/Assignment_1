

//create a Star Class.
class Star {
  // variables for the x and y of each Star.
  float x;
  float y;
  
  // z variable wil be used to change Star postion on screen 
  float z;



  Star() {
    
    x = random(-1000, 1000);//Star spawn at random point on x-axis
    
    y = random(-height/2, height/2);//Star spawn at random point on y-axis
   
    z = random(width/2);//z  used to make Star move forward towards the player and in a random point on x-axis
   
  }

  void update() {
  
    z = z - speed;//this line is used to make Star appear bigger as thay get closer to the player
   
   
     // When the Star has gone passed the user (ie its behind them) we reset so it appears on the screen again as a new Star
    if (z < 1) {//if Star has gone past player
      z = width/2; // z set to centre of screen 
      x = random(-width/2, width/2);//makes Star spawn at random point on x-axis
      y = random(-height/2, height/2);//makes Star spawn at random point on y-axis
     
    }
  }

  void show() {
    fill(255);
    noStroke();

   // use map to get the new Star positions at each frame
    // using map means are sure the new coordinates "sx" and "sy" move are bogger at each frame(making star move faster
    
    float sx = map(x / z, 0, 1, 0, width/2);//map star positions to a range of 0 - 1 (inside a range of 0 - width/2.)
    float sy = map(y / z, 0, 1, 0, height/2);//map star positions to a range of 0 - 1 (inside a range of 0 - height/2.)

    // I use the z value to increase the star size between a range from 0 to 16.
    float r = map(z, 0, width/2, 16, 0);
    ellipse(sx, sy, r, r);;//draw the Star

  

  }
}