


class InsideShip
{
  
 
  
  
    void display()
{

  fill(90);
  
  noStroke();
  fill(70);
  ellipse(340, 230, 200, 80);
  noStroke();
  fill(70);
beginShape();
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
endShape();



fill(30);
stroke(0,255,0);
beginShape();
vertex(0,530);
vertex(150,450);



vertex(550,450);
vertex(width,530);

// etc;
endShape();
stroke(0,255,0);
line (100,330,150,450);
line (600,330,550,450);

buttons ();

}
}

void buttons ()
{
//if (frameRate % 50 > 20);
//{
for (int y = 350 ; y < 420 ; y +=13)
{
  for (int x = 160 ; x < 270 ; x +=13)
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