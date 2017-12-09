
InsideShip ship1 = new InsideShip();
Radar radar;



void setup ()
{
  size (700,500);
  background (0);
  radar = new Radar(340, height / 2, 50, 0.5, color(255, 255, 255));
  
}


void draw ()
{
  ship1.display();//draw inside of ship
  radar.render();//draw radar
  radar.update();//make radar move
  
   
}


void mousePressed()
{
  
  
ship1.moveThrottle();
  

}