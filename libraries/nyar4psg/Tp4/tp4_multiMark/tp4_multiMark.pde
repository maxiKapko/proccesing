
import processing.video.*;
import jp.nyatla.nyar4psg.*;

Capture cam;
MultiMarker nya_r;
MultiMarker nya_l;
PFont font;
PShape shape;
PShape shape2;

void setup() {
  size(640,480,P3D);
  font=createFont("FFScala", 32);
  colorMode(RGB, 100);
  println(MultiMarker.VERSION);
  shape = loadShape("dice.obj");
  shape2 = loadShape("11665_Airplane_v1_l3.obj");
  //キャプチャを作成
  cam=new Capture(this,640,480);
  nya_l=new MultiMarker(this,width,height,"../../data/camera_para.dat",new NyAR4PsgConfig(NyAR4PsgConfig.CS_LEFT_HAND,NyAR4PsgConfig.TM_NYARTK));
  nya_l.addARMarker("../../data/patt.hiro",80);
  
  nya_r=new MultiMarker(this,width,height,"../../data/camera_para.dat",new NyAR4PsgConfig(NyAR4PsgConfig.CS_RIGHT_HAND,NyAR4PsgConfig.TM_NYARTK));
  nya_r.addARMarker("../../data/patt.kanji",80);
  cam.start();
}

int c=0;
void drawgrid()
{
  pushMatrix();
  stroke(0);
  strokeWeight(2);
  line(0,0,0,100,0,0);
  textFont(font,20.0); text("X",100,0,0);
  line(0,0,0,0,100,0);
  textFont(font,20.0); text("Y",0,100,0);
  line(0,0,0,0,0,100);
  textFont(font,20.0); text("Z",0,0,100);
  popMatrix();
}
void draw()
{
  c++;
  if (cam.available() !=true) {
      return;
  }
  cam.read();
  nya_r.detect(cam);
  nya_l.detect(cam);
  background(0);
  nya_r.drawBackground(cam);

  //right
  if((nya_r.isExist(0))){
    nya_r.beginTransform(0);
    fill(0,0,255);
    
    translate(0,0,20);
    rotate((float)c/100);
    shape(shape2);
    nya_r.endTransform();
  }
  //left
  if((nya_l.isExist(0))){
    nya_l.beginTransform(0);
    fill(0,255,0);
    //drawgrid();
    translate(0,0,20);
    rotate((float)c/100);
    shape(shape);
    nya_l.endTransform();
  }
}
