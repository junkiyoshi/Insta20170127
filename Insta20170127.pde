Wall[] walls;

void setup()
{
  size(500, 500, P3D);
  background(255);
  frameRate(30);
  colorMode(HSB);
  rectMode(CENTER);
   
  int x_max = 13;
  int y_max = 13;
  
  float x_size = width / x_max;
  float y_size = height / y_max;
  
  walls = new Wall[x_max * y_max];
  
  for(int x = 0; x < x_max; x++)
  {
    for(int y = 0; y < y_max; y++)
    {
      walls[x + x_max * y] = new Wall(new PVector(x * x_size + x_size / 2, y * y_size + y_size / 2, 0), x_size * 0.75, sq(6 - x) + sq(6 - y));
    }
  }
}

void draw()
{
  background(255);
  
  for(int i = 0; i < walls.length; i++)
  {
    walls[i].run();
  }

  /*
  saveFrame("screen-#####.png");
  if(frameCount > 900)
  {
     exit();
  }
  */

}