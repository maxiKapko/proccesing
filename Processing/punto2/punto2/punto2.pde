size(1200,1200);
PImage img;

 img = loadImage("mario.jpg");
for (int i = 0; i < 3; i++) {
  for (int j = 0; j < 3; j++) {
  
  image(img, i*400, j*400);
}
}
