InsideShip ship1 = new InsideShip();
Radar radar;
Star[] stars = new Star[500];
Planet[] planets = new Planet[5];
float speed;
int i = 1;
float speedX = 5;
float translateX =  350;
float translateY =  250;



void setup ()
{
  size (700,500);
  background (0);
  radar = new Radar(340, height / 2, 50, 0.5, color(255, 255, 255));
  
    for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
    }
    
    for (int i = 0; i < planets.length; i++) {
    planets[i] = new Planet();
  }
  
}


void draw ()
{
  background(0);
  
  translate(translateX, translateY);
  speed = map(speedX, 0, width, 0, 50);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
    for (int i = 0; i < planets.length; i++) {
    planets[i].update();
    planets[i].show();
  }
 
  translate(-translateX, -translateY);
  ship1.display();//draw inside of ship
  radar.render();//draw radar
  radar.update();//make radar move
  
  
  
   
}


void mousePressed()
{
  
  if (dist(mouseX, mouseY,ship1.ThrottleX, ship1.ThrottleY) < 50)
      {
  i = i +1;
  
  if ( i % 2 == 0)
  {
  
      ship1.ThrottleY +=40;
      ship1.CircleY += 90; 
      speedX = speedX +195;
      
      ship1.Color2 = 0;
      ship1.Color3 = 0;
      ship1.O2Amt = ship1.O2Amt + 15; 
      ship1.fuelAmt = ship1.fuelAmt + 10;
      
  }
  
 else if ( i % 2 == 1)
 {
   ship1.ThrottleY -=40;
    ship1.CircleY -= 90; 
    speedX = speedX -195;
    ship1.Color2 = 120;
     ship1.Color3 = 120;
     ship1.O2Amt = ship1.O2Amt - 10;
     ship1.fuelAmt = ship1.fuelAmt - 5;
 }
 
 
      
      }
      


}

 void keyPressed() {
    if (key == 'w') {
   
     speedX = speedX +5;
     if (speedX > 100)
     {
       speedX = 80;
       ship1.fuelAmt = ship1.fuelAmt + 1;
     }
     
  }
     if (key == 's') {
   
     speedX = speedX -210;
     if (speedX < 5)
     {
       speedX = 5;
     }
     
  }
    
     
  if (key == 'a') {
   
     translateX = translateX + 20;
     
  }
  if (key == 'd') {
   
     translateX = translateX -  20;
     
  }
 }
 