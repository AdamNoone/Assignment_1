


class InsideShip
{
  float v1 ; //vertex 1
  float v2 ; //vertex 2
  float v3 ; //vertex 3
  float v4 ; //vertex 4
  
  
    void display()
{
  fill(255);
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
noStroke();
ellipse(340, 230, 200, 80);
}
}