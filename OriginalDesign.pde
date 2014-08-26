void setup()
{
size(500,500);
smooth();
strokeWeight(3);
}
void draw()
{
  body();
  eyes();
  beak();
  feet();
  wings();
}
void body()
{
fill(100,149,237);
ellipse(200,200,140,200);
fill(255,255,255);
ellipse(200,240,80,85);
}
void eyes()
{
fill(0,0,0);
ellipse(220,135,30,30);
ellipse(180,135,30,30);
fill(238,229,222);
ellipse(185,130,15,15);
ellipse(225,130,15,15);
}
void beak()
{
fill(255,215,0);
bezier(150,190,175,150,210,150,220,165);
bezier(150,190,165,180,195,179,220,165);
bezier(168,185,165,195,210,195,220,167);
}
void feet()
{
fill(255,215,0);
beginShape();
curveVertex(185,300);
curveVertex(185,300);
curveVertex(175,310);
curveVertex(172,295);
curveVertex(162,305);
curveVertex(160,285);
curveVertex(160,285);
endShape();
beginShape();
curveVertex(215,300);
curveVertex(215,300);
curveVertex(225,310);
curveVertex(228,295);
curveVertex(238,305);
curveVertex(240,285);
curveVertex(240,285);
endShape();
}
void wings()
{
fill(100,149,237);
bezier(267,173,290,200,310,300,260,250);
bezier(133,173,110,200,90,300,140,250);
}
