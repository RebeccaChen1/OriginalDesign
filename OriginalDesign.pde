boolean gameOver = false;
Ball rebecca=new Ball();
Paddle Rebecca = new Paddle();
int score = 0 ;

void setup()
{
  size(250, 300);
  frameRate(150);
  background(0);
}

void draw()
{
  if (key=='r')
  {
    gameOver=false;
  }
  if (gameOver == true)
  {
    text("Game Over", 125, 150);
    score=0;
  }
  if (gameOver == false)
  { 

    rebecca.check();
    background(0);
    rebecca.bounce();
    rebecca.move();
    rebecca.show();
    Rebecca.move();
    Rebecca.show();
    text(score,200,50);
  }
}

class Paddle
{
  int x = 100;
  Paddle()
  {
  }
 
  void move()
  {
    if (keyPressed==true) 
    {
      if (key==CODED)
      {
        if ( keyCode == RIGHT)
        {
          x++;
        }
        if (keyCode == LEFT)
        {
          x--;
        }
        if (x>210)
        {
          x=210;
        }
        if (x<0)
        {
          x=0;
        }
      }
    }
  }


  void show()
  {
    fill(255, 255, 255);
    rect(x, 292, 40, 8);
  }
}

class Ball
{
  int x1 = 100;
  int y1 = 100;
  boolean right;
  boolean up;
  Ball()
  {
  }
  void move()
  {

    if (right==true)
    {
      x1++;
    }
    if (right==false)
    {
      x1--;
    }
    if (up==true)
    {
      y1--;
    }
    if (up==false)
    {
      y1++;
    }
  }

  void bounce()
  {
    if (x1>242)
    {
      right=false;
    }
    if (x1<8)
    {
      right=true;
    }
    if (y1>292)
    {
      up=true;
    }
    if (y1<8)
    {
      up=false;
    }
  }

  void check()
  { 
    if (get(x1, y1+9) == color(255))
    {
      up=true;
      score ++;
            
    }

    if (y1>290)
    {
      gameOver = true;
    }
  }

  void show()
  {
    fill(255, 0, 0);
    ellipse(x1, y1, 16, 16);
  }
}

