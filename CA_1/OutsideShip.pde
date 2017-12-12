class OutsideShip
{
  
 void DrawExterior()
{
  noFill();
  stroke(70);
  ellipse(237,200,200,200);
  ellipse(237,200,150,150);
  
  stroke(255);
 
  fill(70);
  
  


  beginShape();// begin draw dashboard
vertex(20,200);
vertex(150,200);
vertex(150,300);
vertex(20,300);
vertex(20,200);
endShape();//

 beginShape();// begin draw dashboard
vertex(20,200);
vertex(66,160);
vertex(200,160);
vertex(150,200);
vertex(20,200);
endShape();//

 beginShape();// begin draw dashboard
vertex(200,160);
vertex(200,260);
vertex(150,300);
vertex(150,200);
vertex(200,160);
endShape();//

beginShape();// begin draw dashboard
vertex(20+250,200);
vertex(150+250,200);
vertex(150+250,300);
vertex(20+250,300);
vertex(20+250,200);
endShape();//

 beginShape();// begin draw dashboard
vertex(20+250,200);
vertex(66+250,160);
vertex(200+250,160);
vertex(150+250,200);
vertex(20+250,200);
endShape();//

 beginShape();// begin draw dashboard
vertex(200+250,160);
vertex(200+250,260);
vertex(150+250,300);
vertex(150+250,200);
vertex(200+250,160);
endShape();//





beginShape();// begin draw dashboard
vertex(150,200);
vertex(270,200);
vertex(315,160);
vertex(200,160);
vertex(150,200);
endShape();//

 beginShape();// begin draw dashboard
vertex(20+250,200);
vertex(66+250,160);
vertex(200+250,160);
vertex(150+250,200);
vertex(20+250,200);
endShape();//

 beginShape();// begin draw dashboard
vertex(200+250,160);
vertex(200+250,260);
vertex(150+250,300);
vertex(150+250,200);
vertex(200+250,160);
endShape();//

fill(255,0,0);
stroke(0);
ellipse(330,250,50,50);
ellipse(80,250,50,50);



}
  
} 