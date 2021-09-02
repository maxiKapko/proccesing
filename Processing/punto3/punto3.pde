size(400,400);
PImage img;
PImage img2;
img = loadImage("mario.jpg");
img2 = loadImage("luigi.jpg");
image(img, 0, 0);
tint(0, 153, 204, 126);  // Tint blue and set transparency
image(img2, width/2, 0);
