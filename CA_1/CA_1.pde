//import librarys
import processing.sound.*;

//declare sound files
SoundFile file1;
SoundFile file2;
SoundFile file3;
SoundFile file4;
SoundFile file5;
SoundFile file6;
SoundFile file7;

//declare class objects
InsideShip ship1 = new InsideShip();//InsideShip Object
OutsideShip ship2 = new OutsideShip(); //OutsideShip Object
Radar radar;
Star[] stars = new Star[500];// array of 500 star objects
Planet[] planets = new Planet[3];// aray of 3 planet objects
float speed;//used to determine spped of ship
//ALL COUNTERS USED 
int i = 1;
int j = 1;
int m = 1;
int a = 0;
int b = 0;
int f = 1;
int w = 1;


int invisible =0;//used to see in "i" key or Invissable cloak button has been pressed
int thirdPerson = 0; //used to see in "t" key or third person button has been pressed

float speedX = 15;//used to change speed of ship
float translateX =  350;//tranlate whole sketch on x axis
float translateY =  250;//tranlate whole sketch on Y axis


PImage space;//background Image 



void setup ()
{
  size (700,500);
  
  space = loadImage("background.jpg");//set back image 
   // Load a soundfile from the /data folder of the sketch and play it back
  file1 = new SoundFile(this, "BackSpace.mp3");// set backround music
  file1.play();//play backround music
  
  radar = new Radar(340, height / 2, 50, 0.5, color(255, 255, 255));//call radar constructor
  
    for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();//makes 500 stars 
    }
    
     for (int i = 0; i < planets.length; i++)
     {
        planets[i] = new Planet(i);//makes 3 stars
     }
  
    
 loadData();//call  function to load data  from CSV file 
  
}

void loadData() // function to load data  from CSV file
{
  Table table = loadTable("planets.csv", "header"); 
  
  // Table.rows() returns all the table rows
  // We can iterate over all the rows using a for each loop
  for(TableRow row:table.rows())
  {
    // Create a new Species object from each of the rows
    // By passing the TableRow into the Species constructor
    Species species = new Species(row);
    // Add the new Species object to the stars ArrayList
    speciess.add(species);
  }

  
}

ArrayList<Species> speciess = new ArrayList<Species>();//define an array List called Species


void draw ()
{
  if (invisible ==0)//if invisable button has not been pressed
  {
   image(space,0,0);
  
  translate(translateX, translateY);//translate so stars are in centre of screen 
  speed = map(speedX, 0, width, 0, 50); //set ships speed 
  for (int i = 0; i < stars.length; i++) {//draw all the stars
    stars[i].update();//updates stars postion
    stars[i].show();//draw star in new positon
  }
    for (int i = 0; i < planets.length; i++) {//draw all the planet
    planets[i].update();//updates planet postion
    planets[i].show();//draw planet in new positon
  }
 
  translate(-translateX, -translateY);//untraslate
  ship1.display();//draw inside of ship
  radar.render();//draw radar
  radar.update();//make radar move
  
  displaySpecies ();//draw planets on radar 
  displaySpeciesInfo ();//get info for each planet 
  
  ship1.fuelAmt -=0.009;//fuel fills slowly
  ship1.O2Amt -=0.009;//O2 fills slowly
  
  
  }
  
  if ((invisible ==1) && (thirdPerson ==0))//if invisable button has been pressed and not in 3rd person mode
  {
    background(0);
       image(space,0,0);
       
  
  translate(translateX, translateY);//translate so stars are in centre of screen
  speed = map(speedX, 0, width, 0, 50);//set ships speed
  for (int i = 0; i < stars.length; i++) {//draw all the stars
    stars[i].update();//updates stars postion
    stars[i].show();//draw star in new positon
  }
    for (int i = 0; i < planets.length; i++) {//draw all the planets
    planets[i].update();//updates planet postion
    planets[i].show();//draw planet in new positon
  }
     
  }
  
  
   if ((invisible ==0) && (thirdPerson ==1)) //if invisable button has not been pressed and  in 3rd person mode
  {
    background(0);
       image(space,0,0);
  
  translate(translateX, translateY);//translate so stars are in centre of screen
  speed = map(speedX, 0, width, 0, 50);//set ships speed
  for (int i = 0; i < stars.length; i++) {//draw all the stars
    stars[i].update();//updates stars postion
    stars[i].show();//draw star in new positon
  }
    for (int i = 0; i < planets.length; i++) {//draw all the planets
    planets[i].update();//updates planet postion
    planets[i].show();//draw planet in new positon
  }
     ship2.DrawExterior();//draw the outside of the ship
  }
  
  
  
  if ((invisible ==1) && (thirdPerson ==1))//if invisable button has been pressed and  in 3rd person mode
  {
      background(0);
       image(space,0,0);
  
  //SAME AS ABOVE
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
  }
}



void mousePressed()
{
  
  
  if (dist(mouseX, mouseY,ship1.ThrottleX, ship1.ThrottleY) < 50) //if throttle has been presses
      {
  i = i +1;//used to see how may time its been pressed 
  
  if ( i % 2 == 0)//put throttle down
  {
      
      ship1.ThrottleY +=40;//move throttle
      ship1.CircleY += 90; //move throttle
      speedX = speedX +600;//increase ship speed
      
      ship1.Color1 = 255;//change warning light colour
      ship1.Color2 = 0;//change warning light colour
      ship1.Color3 = 0;//change warning light colour
      ship1.O2Amt = ship1.O2Amt + 80; //change amt of O2
      ship1.fuelAmt = ship1.fuelAmt + 80;//change amt of fuel
      radar.speed = radar.speed *7;//change radar speed
      radar.c = radar.c -200;//change radar color
      RadarWarp ();//call radr warp func
      
 
    
      
        file5 = new SoundFile(this, "warp.mp3");
        file6 = new SoundFile(this, "warpmusic.mp3");
  
         file1.stop();//stop back music
         file5.play();//play warp sound
         file6.play();//play warp sound
      
  }
  
 else if ( i % 2 == 1)//pull throttle up
 {
   //set all values back to were before warp
   
    ship1.ThrottleY -=40;
    ship1.CircleY -= 90; 
    speedX = speedX -600;
    ship1.Color1 = 100;
    ship1.Color2 = 120;
    ship1.Color3 = 120;
     radar.speed = radar.speed /7;
     radar.c = radar.c +200;
     RadarWarp (); 
    
     
     
     
     ship1.fuelAmt = ship1.fuelAmt - 5;
     file6.stop();
     file5.play();
     file1.play();
 }
 
 
      
      }
      
      
      
      //Button Noises
      
      if (dist(mouseX, mouseY,212, 382) < 25)
      {
       j = j +1; //used to see if bottons have been pressed before 
  
        if ( j % 2 == 0)//if they are pressed
        {
  
           b = b +1;//counter used to two adio file not played at same time 
         
         if (a == 1)//if another file is playing ,turn it off 
         {
           file3.stop();
         }
       // Load a soundfile from the /data folder of the sketch and play it back
      file2 = new SoundFile(this, "Buttons.mp3");
      
      
      file2.play();
      
  }
  
 else if ( j % 2 == 1)//if buttins have alredy been pressed ,then next time we press the we are turning them off
 {
   b = b -1;//counter used to two audio file not played at same time 
  file2.stop();
  
 }
 
 
      
      }
      
      
      
      //Play the radio (buttons on the left)
      
            if (dist(mouseX, mouseY,157,381) < 25)
      {
            m = m +1;//used to see if bottons have been pressed before 
            
            if ( m % 2 == 0)//if pressed once 
            {
            
               a = a +1;//counter used to two audio file not played at same time 
               
               if (b == 1)//if pressed again
               {
                 file2.stop();
               }
             // Load a soundfile from the /data folder of the sketch and play it back
            file3 = new SoundFile(this, "radio.mp3");
            
            
            file3.play();
                
            }
            
           else if ( m % 2 == 1)//used to see if bottons have been pressed before 
           {
             a = a -1;//counter used to two audio file not played at same time 
            file3.stop();
            
           }
           
 
      
      }
      
      
      
     
       //Contact Radio Tower
            if (dist(mouseX, mouseY,475,384) < 25)
      {

   // Load a soundfile from the /data folder of the sketch and play it back
  file4 = new SoundFile(this, "transmission.mp3");
  
  
  file4.play();//play transmission audio
      
  }
  

     //Invisible button
      if (dist(mouseX, mouseY,243,10) < 28)
      {

           
         
     f += 1;
      
  
  if ( f % 2 == 0)//seee if button pressed before
  {
  
    invisible = invisible +1;//incrment invisible
    file7 = new SoundFile(this, "button.mp3");
    file7.play();//play button  being pressed audio
      
  }
  
 else if ( f % 2 == 1)//if button pressed again
 {
  invisible = invisible -1;//decrment invisible
  file7.play();//play button  being pressed audio
 }
   
  }
  
      
  //3rd person Button 
       if (dist(mouseX, mouseY,430,10) < 28)
      {

           
         
     w += 1;
      
  
  if ( w % 2 == 0)//seee if button pressed before
  {
  
    thirdPerson = thirdPerson +1;//incrment thirdPerson
    file7 = new SoundFile(this, "button.mp3");
    file7.play();//play button  being pressed audio
      
  }
  
 else if ( w % 2 == 1)//seee if button pressed again
 {
  thirdPerson = thirdPerson -1;//decrment thirdPerson
  
    file7.play();//play button  being pressed audio
 }
   
  }
   
      
     
 }
 
 

 void keyPressed() {
   
   if (key == 't') {//if t was pressed then toggle 3rd person mode
   
          w += 1;
      
  
  if ( w % 2 == 0)
  {
  
    thirdPerson = thirdPerson +1;
    file7 = new SoundFile(this, "button.mp3");
    file7.play();
      
  }
  
 else if ( w % 2 == 1)
 {
  thirdPerson = thirdPerson -1;
  
    file7.play();
 }
   
  
     
   }
     if (key == 'i') {//if i was pressed then toggle invisable mode
   
     f += 1;
     
      if ( f % 2 == 0)
  {
  
    invisible = invisible +1;
    file7 = new SoundFile(this, "button.mp3");
    file7.play();
      
  }
  
 else if ( f % 2 == 1)
 {
  invisible = invisible -1;
  file7.play();
 }
     
  }
   
    if (key == 'w') { //if w was pressed
   
     speedX = speedX +5;
     if (speedX > 100)
     {
       speedX = 80;
       
     }
     ship1.fuelAmt = ship1.fuelAmt + 0.1;
       ship1.O2Amt = ship1.O2Amt + 0.1;
     
  }
     if (key == 's') { //if s was pressed
   
     speedX = speedX -10;
     if (speedX < 5)
     {
       speedX = 5;
     }
     
  }
    
     
  if (key == 'a') { //if a was pressed
   
     translateX = translateX + 20;
     
  }
  if (key == 'd') { //if d was pressed
   
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

 void RadarWarp ()
{
  fill(255,255,225);
  
   for(Species species:speciess)
  {
   float x = species.screenPosX;
      
  species.screenPosY= species.screenPosY +20;
  

  }
  
}