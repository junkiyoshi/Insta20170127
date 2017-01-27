class Wall
{
  PVector center;
  float size;
  float angle;
  float direction;
  
  Wall(PVector c, float s, float a)
  {
    center = c;
    size = s;
    angle = a;
    direction = 1;
  }
  
  void run()
  {
    update();
    write();
  }
  
  void update()
  {
    angle = (angle - direction) % 360;
  }
  
  void write()
  {
    pushMatrix();
    translate(center.x, center.y, center.z);
    rotateY(radians(-angle));
    rotateZ(radians(angle));
    
    stroke(0, 0, 255);
    if(angle > 0)
    {
      fill((angle / 360) * 255, 255, 255);
    }else
    {
      fill((angle * -1 / 360) * 255, 255, 255);
    }
    box(size, size, size);
    
    popMatrix();
  }
}