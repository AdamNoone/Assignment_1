//create InsideShip class
class OutsideShip
{
  //fuction to draw outside of ship(used in 3rd person mode)
 void DrawExterior()
{
  
  float posX =-120;// X variable used when ship compartments 
  float posY =-40; // Y variable used when ship compartments 
  
   stroke(255);
  strokeWeight(10); 
  
  //Draw the ships wings 
  line(130,10,195,-20);
  line(130,10,195,40);
  
  line(-120,10,-200,-20);
  line(-120,10,-200,40);
  strokeWeight(4); 
  
  //Draw the ships engines 
  stroke(255,0,0);
  ellipse(195,-20,9,30);
  ellipse(195,40,9,30);
  
  ellipse(-200,-20,9,30);
  ellipse(-200,40,9,30);
  
  //Draw walkway connecting ships
  stroke(0);
   rect (posX+100,posY+45,50,10);
  fill(255);
  stroke(0);

//drw ship compartments
  rect (posX,posY,100,100);
  rect (posX+150,posY,100,100);
 
  
 
  
  strokeWeight(1); 
  
  
















}
  
} 