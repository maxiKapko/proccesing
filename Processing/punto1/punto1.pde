
PImage img;

void setup() {
  img = loadImage("mario.jpg");
  size(400,400);
}

void draw() {
  loadPixels(); 
  img.loadPixels(); 
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;
      
      // las funciones  red(), green(), y blue() extraen el componente de color de cada pixel.
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
     
      
      // Cambio el valor de los pixeles, los rojos por verdes los verdes por zules y los azules por rojos
      pixels[loc] =  color(g,b,r);          
    }
  }
  updatePixels();
}
