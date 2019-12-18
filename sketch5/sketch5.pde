PImage thanos;
void setup()
{
  size(990,600);
  thanos = loadImage("the nose.jpg");
}
void draw()
{
  image(thanos,0,0);
  loadPixels();
  thanos.loadPixels();
  for(int x=0; x < width; x++)
  {
    for(int y = 0; y < height; y++)
    {
      int loc = x+y*width;
      float r = red  (thanos.pixels[loc]);
      float g = green(thanos.pixels[loc]);
      float b = blue (thanos.pixels[loc]);
      float d = dist(width/2, height/2, x, y);
      if (((r > 70 && b > 50 && g > 55) && (r < 180 && b < 200 && g < 190))&&(x < 550 && x > 350))
      {
        r = random(0,255);
        b = random(0,150);
        g = random(0,120);
      }
      pixels[loc] = color(r,g,b);
      
      //pixels[loc] = thanos.pixels[loc];
    }
    
  }
  updatePixels();
}
