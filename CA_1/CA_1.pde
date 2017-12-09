InsideShip ship1 = new InsideShip();
Radar radar;
Star[] stars = new Star[500];
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
    stars[i] = new Star();;
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
  }
  
 else if ( i % 2 == 1)
 {
   ship1.ThrottleY -=40;
    ship1.CircleY -= 90; 
    speedX = speedX -195;
    ship1.Color2 = 120;
     ship1.Color3 = 120;
 }
 
 
      
      }
      


}

 void keyPressed() {
    if (key == 'w') {
   
     speedX = speedX +10;
     if (speedX > 100)
     {
       speedX = 50;
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
 