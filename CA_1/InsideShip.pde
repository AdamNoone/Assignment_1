

//create InsideShip class
class InsideShip
{
  
  
 void moveThrottle()//create moveThrottle()function to animate throttle when clicked.
{
 fill(30);
rect(510,350 ,30,70); //draw a rect

fill(90);
rect(520,370 ,10,55);//draw a rect

fill(255,0,0);
stroke(0);
ellipse(525,430,30,30);//draw circle


}
  float ThrottleX =520;// X variable used when drawing Throttle
  float ThrottleY =340; // Y variable used when drawing Throttle
  float CircleX  = 525; // X variable used when drawing Throttle gearstick
  float CircleY =  340; // Y variable used when drawing Throttle gearstick
  float GaugeX = 40;  //X variable used when drawing fuel and oxygen gauges
  float GaugeY = 375; //Y variable used when drawing fuel and oxygen gauges
  float Color1 = 100; //used to chande colour of warning button during warp
  float Color2 = 102; //used to chande colour of warning button during warp
  float Color3 = 102; //used to chande colour of warning button during warp
  float ScreenX = 280; // X variable used when drawing scree to diplay planet Information
  float ScreenY = 325; // Y variable used when drawing scree to diplay planet Information
  float numbersX = 23  ; //X variable used to draw numbers on fuel gauge
  float numbersY = 457  ; //Y variable used to draw numbers on fuel gauge
  float col1 = 0; //varible used to change O2 colour based on amount left
  float col2 = 255;//varible used to change O2 colour based on amount left
  float col3 = 0;//varible used to change O2 colour based on amount left
  float InvisButX = 203;// X variable used when drawing invisiible Cloak and 3rd person buttons
  float InvisButY = 9;// Y variable used when drawing invisiible Cloak and 3rd person buttons
  
  float fuelX = 41;// X variable used when drawing fuel
  float fuelY = 454;// Y variable used when drawing fuel
  float fuelX2 = 81; // X variable used when drawing Oxygen
  float fuelY2 = 455; // Y variable used when drawing Oxygen
  float  O2Amt = -80; //variable to dictate how much Oxygen the ship has 
  float  fuelAmt = -50; //variable to dictate how much fuel the ship has 
  
    void display()
{

  fill(90);
  
  noStroke();
  fill(70);
  ellipse(340, 230, 200, 80);//draw circle
  noStroke();
  fill(70);
beginShape();// begin draw dashboard
vertex(0,height);
vertex(-50,430);
vertex(100,330);


vertex(240,305);
vertex(240,230);
vertex(440,230);
vertex(440,305);

vertex(600,330);
vertex(width + 50,430);
vertex(width,height);
// etc;
endShape();//end draw dashboard

stroke(0,255,0);
beginShape();// begin draw top
vertex(width,0);
vertex(width,65);
vertex(600,30);
vertex(100,30);
vertex(0,65);
vertex(0,0);
endShape();//end draw top
 noStroke();
beginShape();// begin draw side1
vertex(width,65);
vertex(695,60);
vertex(695,395);
vertex(width,400);

endShape();//end draw side1

beginShape();// begin draw side2
vertex(0,65);
vertex(5,60);
vertex(5,395);
vertex(0,400);



endShape();//end draw side2
stroke(70);
line(100,30,100,330);
line(600,30,600,330);




stroke(0,255,0);
fill(30);

beginShape();//shade at bottom
vertex(0,530);
vertex(150,450);
vertex(550,450);
vertex(width,530);
endShape();

stroke(0,255,0);
line (100,330,150,450);
line (600,330,550,450);

buttons ();


fill(30);
rect(510,350 ,30,70);//draw a rect

fill(90);
rect(ThrottleX,ThrottleY ,10,55);//draw a rect

fill(255,0,0);
stroke(0);
ellipse(CircleX,CircleY,30,30);//draw circle

//make fuel and oxygen gauge 

fill(90);
rect(GaugeX,GaugeY,25,80);//draw a rect
rect(GaugeX ,GaugeY + 80,25,15);//draw a rect

fill(255,255,225);
  textSize(10);
  text("Fuel",GaugeX +2 ,GaugeY +92);
  
  
  
  
    
    
    
  
  

fill(90);
rect(GaugeX + 40,GaugeY,25,80);//draw a rect
rect(GaugeX +40 ,GaugeY + 80,25,15);//draw a rect
fill(255,255,225);
textSize(10);
text("O2",GaugeX +42 ,GaugeY +92);
  
  
  //amount in fuel and O2 tanks 
  fill(244,0,0);
rect(fuelX,fuelY,23,fuelAmt);//draw a rect

      if ( O2Amt < -55)
     {
     
       col1 = 0;
       col2 = 255;
       col3 = 0;
     }
      else if ( (O2Amt > -55) && (O2Amt < -25))
     {
     
       col1 = 0;
       col2 = 0;
       col3 = 255;
     }
      else if (O2Amt > -25)
     {
     
       col1 = 255;
       col2 = 0;
       col3 = 0;
     }
     if (O2Amt > -5)
     {
       O2Amt = -7;
     }
     
      if (O2Amt < -79)
     {
       O2Amt = -79;
     }
      

fill(col1,col2,col3);
rect(fuelX2 ,fuelY2 ,23,O2Amt);//draw a rect

 if (fuelAmt > -5)
     {
       fuelAmt = -5;
     }
     
      if (fuelAmt < -77)
     {
       fuelAmt = -77;
     }
   
fill(255);
textSize(8);
text("0-----",numbersX ,numbersY);

text("250---",numbersX ,numbersY - 16);

text("500---",numbersX ,numbersY - 32);

text("750---",numbersX ,numbersY-48);

text("1000---",numbersX -5 ,numbersY-64);


//Go invivsable button 
stroke(255,0,0);
fill(70);
rect(InvisButX,InvisButY ,90,15);//draw a rect

  fill(255);
  textSize(10);
  text("Invisable Cloak",InvisButX +8 ,InvisButY + 11);
  
  
  //3rd person Button 
  fill(70);
  rect(InvisButX+170,InvisButY ,90,15);//draw a rect

  fill(255);
  textSize(10);
  text("3rd Person",InvisButX +188 ,InvisButY + 11);
  
  fill (0);
  stroke(150);
rect( ScreenX,ScreenY,120,100);
   

//warning light
fill(Color1,Color3,Color3);
rect(585,GaugeY +15,90,25);

fill(255,255,225);
  textSize(15);
  text("Warning",600 ,GaugeY +35);
  
  fill (0);
  stroke(150);
rect( ScreenX,ScreenY,120,100);//draw a rect

rect( 290,198,100,101);//draw a rect

fill(0,255,0);
textSize(10);
text("Planet Name :",ScreenX + 5 ,ScreenY + 10);

text("Discovered :",ScreenX + 5 ,ScreenY + 40);

text("Population :",ScreenX + 5 ,ScreenY + 75);
}
}


void buttons ()
{
  
  for (int y = 360 ; y < 400 ; y +=13)
{
  for (int x = 440 ; x < 470 ; x +=13)
{
  float col = random(0,10);
  if (col < 9)
  {
    
  fill (0,255,0);
   rect (x,y,7,7);
   
  }
  else 
  {
   fill (random(0,225),random(0,225),random(0,225));
  rect (x,y,7,7);
 }
//}
}
}

for (int y = 360 ; y < 400 ; y +=13)
{
  for (int x = 140 ; x < 170 ; x +=13)
{
  float col = random(0,10);
  if (col < 9)
  {
    
  fill (0,255,0);
   rect (x,y,7,7);
   
  }
  else 
  {
   fill (random(0,225),random(0,225),random(0,225));
  rect (x,y,7,7);//draw a rect
 }
//}
}
}



for (int y = 360 ; y < 400 ; y +=13)
{
  for (int x = 195 ; x < 225 ; x +=13)
{
  float col = random(0,10);
  if (col < 9)
  {
    
  fill (0,255,0);
   rect (x,y,7,7);//draw a rect
   
  }
  else 
  {
   fill (random(0,225),random(0,225),random(0,225));
  rect (x,y,7,7);
 }
//}
}
}
}