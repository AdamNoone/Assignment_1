


class InsideShip
{
  
 void moveThrottle()
{
 fill(30);
rect(510,350 ,30,70);

fill(90);
rect(520,370 ,10,55);

fill(255,0,0);
stroke(0);
ellipse(525,430,30,30);


}
  float ThrottleX =520;
  float ThrottleY =340;
  float CircleX  = 525;
  float CircleY =  340;
  float GaugeX = 40;
  float GaugeY = 375;
  float Color2 = 102;
  float Color3 = 102;
  float ScreenX = 280;
  float ScreenY = 325;
  
   float fuelX = 41;
  float fuelY = 454;
   float fuelX2 = 81;
  float fuelY2 = 455;
  float  O2Amt = -50;
  float  fuelAmt = -50;
  
    void display()
{

  fill(90);
  
  noStroke();
  fill(70);
  ellipse(340, 230, 200, 80);
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



fill(30);
stroke(0,255,0);
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
rect(510,350 ,30,70);

fill(90);
rect(ThrottleX,ThrottleY ,10,55);

fill(255,0,0);
stroke(0);
ellipse(CircleX,CircleY,30,30);

//make fuel and oxygen gauge 

fill(90);
rect(GaugeX,GaugeY,25,80);
rect(GaugeX ,GaugeY + 80,25,15);

fill(255,255,225);
  textSize(10);
  text("Fuel",GaugeX +2 ,GaugeY +92);

fill(90);
rect(GaugeX + 40,GaugeY,25,80);
rect(GaugeX +40 ,GaugeY + 80,25,15);
fill(255,255,225);
textSize(10);
text("O2",GaugeX +42 ,GaugeY +92);
  
  
  //amount in fuel and O2 tanks 
  fill(244,0,0);
rect(fuelX,fuelY,23,fuelAmt);

fill(0,0,255);
rect(fuelX2 ,fuelY2 ,23,O2Amt);
   

//warning light
fill(225,Color3,Color3);
rect(585,GaugeY +15,90,25);

fill(255,255,225);
  textSize(15);
  text("Warning",600 ,GaugeY +35);
  
  fill (0);
  stroke(150);
rect( ScreenX,ScreenY,120,100);

rect( 290,198,100,101);

fill(255,255,225);
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
  rect (x,y,7,7);
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

}