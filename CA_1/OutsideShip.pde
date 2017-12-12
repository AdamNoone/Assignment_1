class OutsideShip
{
  
 void DrawExterior()
{
  
  float posX =-120;
  float posY =-40;
  
   stroke(255);
  strokeWeight(10); 
  line(130,10,195,-20);
  line(130,10,195,40);
  
  line(-120,10,-200,-20);
  line(-120,10,-200,40);
  strokeWeight(4); 
  
  stroke(255,0,0);
  ellipse(195,-20,9,30);
  ellipse(195,40,9,30);
  
  ellipse(-200,-20,9,30);
  ellipse(-200,40,9,30);
  
  
  stroke(0);
   rect (posX+100,posY+45,50,10);
  fill(255);
  stroke(0);

  rect (posX,posY,100,100);
  rect (posX+150,posY,100,100);
 
  
 
  
  strokeWeight(1); 
  
  
















}
  
} 