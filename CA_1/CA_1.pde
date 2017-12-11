  
import processing.sound.*;
SoundFile file1;
SoundFile file2;
SoundFile file3;
SoundFile file4;
SoundFile file5;

InsideShip ship1 = new InsideShip();
Radar radar;
Star[] stars = new Star[500];
Planet[] planets = new Planet[3];
float speed;
int i = 1;
int j = 1;
int m = 1;
int a = 0;
int b = 0;

float speedX = 5;
float translateX =  350;
float translateY =  250;


PImage space;



void setup ()
{
  size (700,500);
  
  space = loadImage("background.jpg");
   // Load a soundfile from the /data folder of the sketch and play it back
  file1 = new SoundFile(this, "BackSpace.mp3");
  file1.play();
  
  radar = new Radar(340, height / 2, 50, 0.5, color(255, 255, 255));
  
    for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
    }
    
     for (int i = 0; i < planets.length; i++)
     {
        planets[i] = new Planet(i);
     }
  
    
 loadData();
  
}

void loadData()
{
  Table table = loadTable("planets.csv", "header"); 
  
  // Table.rows() returns all the table rows
  // We can iterate over all the rows using a for each loop
  for(TableRow row:table.rows())
  {
    // Create a new Product object from each of the rows
    // By passing the TableRow into the Product constructor
    Species species = new Species(row);
    // Add the new Star object to the stars ArrayList
    speciess.add(species);
  }

  
}

ArrayList<Species> speciess = new ArrayList<Species>();


void draw ()
{
   image(space,0,0);
  
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
  
  displaySpecies ();
  displaySpeciesInfo ();
  
  
   
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
      ship1.warncol = ship1.warncol +10;
        file5 = new SoundFile(this, "warp.mp3");
  
         file1.stop();
         file5.play();
         file1.play();
      
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
      
      
      
      //music
      
      if (dist(mouseX, mouseY,212, 382) < 25)
      {
  j = j +1;
  
  if ( j % 2 == 0)
  {
  
       b = b +1;
     
     if (a == 1)
     {
       file3.stop();
     }
   // Load a soundfile from the /data folder of the sketch and play it back
  file2 = new SoundFile(this, "Music.mp3");
  
  
  file2.play();
      
  }
  
 else if ( j % 2 == 1)
 {
   b = b -1;
  file2.stop();
  
 }
 
 
      
      }
      
      
      
      //radio
      println(mouseX, mouseY);
            if (dist(mouseX, mouseY,157,381) < 25)
      {
  m = m +1;
  
  if ( m % 2 == 0)
  {
  
     a = a +1;
     
     if (b == 1)
     {
       file2.stop();
     }
   // Load a soundfile from the /data folder of the sketch and play it back
  file3 = new SoundFile(this, "radio.mp3");
  
  
  file3.play();
      
  }
  
 else if ( m % 2 == 1)
 {
   a = a -1;
  file3.stop();
  
 }
 
 
      
      }
      
      
      
     
       
            if (dist(mouseX, mouseY,455,384) < 25)
      {

   // Load a soundfile from the /data folder of the sketch and play it back
  file4 = new SoundFile(this, "transmission.mp3");
  
  
  file4.play();
      
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
 
 void displaySpecies ()
{
   for(Species species:speciess)
  {
   float x = species.screenPosX;
   float y = species.screenPosY;
    
    species.screenPosY = species.screenPosY + 0.01;
   
   
   stroke(255, 255, 0);
   fill(100);
   
   ellipse(x,y,4,4);
   
   if (species.screenPosY > 297)
   {
     species.screenPosY = 204;
   }
  }

}

 void displaySpeciesInfo ()
{
  fill(255,255,225);
  textSize(10);
   for(Species species:speciess)
  {
   float x = species.screenPosX;
   float y = species.screenPosY;
   
    if (dist(mouseX, mouseY, x, y) < 5)
      {
   
        text(species.Name, ship1.ScreenX + 5, ship1.ScreenY + 22);
        text(species.Discovered, ship1.ScreenX + 5, ship1.ScreenY + 52);
        text(species.Population, ship1.ScreenX + 5, ship1.ScreenY + 87);
      }
   
  

}
  
}