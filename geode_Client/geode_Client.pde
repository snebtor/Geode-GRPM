import processing.opengl.*;
import processing.net.*;
import codeanticode.gsvideo.*;
Client myClient;
GSMovie cam;

boolean haveServer = false;
PVector A,B,C,D,E,F;
PImage tex;
PShape crossx;
float t;
int alphavid;

float xoff, yoff;

boolean backy = true;
boolean whiteline = false;
boolean blackline = false;
boolean fillz=false;
boolean noline=false;
boolean nofillz=false;
boolean scene1 = true;
boolean scene2 = false;
boolean scene3 = false;
boolean scene4 = false;
boolean scene5 = false;
boolean scene6 = false;
boolean scene7 = false;
boolean scene8 = false;
boolean scene9 = false;
boolean scene0 = false;
int val1,val2,val3,val4;


//Package for the net
NetworkPackage netPackage = new NetworkPackage();
byte byteBuffer[] = new byte[netPackage.sizeExpected()];

void setup(){
size(350,350,OPENGL);
  myClient = new Client(this, "127.0.0.1", 5204); //localhost
 // myClient = new Client(this, "169.254.76.81", 5204); // put local network IP
  cam = new GSMovie(this, "t.mov");
  cam.loop();
  crossx = loadShape("x.svg");
  shapeMode(CENTER);
  ellipseMode(CENTER);
  
  stroke(255);
  strokeWeight(0.5);
  A = new PVector(0, 44);
  B = new PVector(142, 44);
  C = new PVector(142, 0);
  D = new PVector(370, 0);
  E = new PVector(370, 44);
  F = new PVector(512, 44);
  
}

void movieEvent(GSMovie cam) {
  cam.read();
}

void draw(){
   lights();
   if (myClient.available() > 0) { 
    // Acá quiero leer val1, val2, val3 y val4
    int desiredSize = netPackage.sizeExpected();
    int byteCount = 0;
    byteCount = myClient.readBytes(byteBuffer);
    if (byteCount == desiredSize) {
      netPackage.setData(byteBuffer);
      //netPackage.print();
    }
    //In the same order that were written in the Server
    int values[] = netPackage.getValues();
    val1 = values[0];
    val2 = values[1];
    val3 = values[2];
    val4 = values[3];
    backy = boolean(values[4]);
    scene1 = boolean(values[5]);
    scene2 = boolean(values[6]);
    scene3 = boolean(values[7]);
    scene4 = boolean(values[8]);
    scene5 = boolean(values[9]);
    scene6 = boolean(values[10]);
    alphavid= values[11];
    whiteline= boolean(values[12]); 
    noline= boolean(values[13]); 
    blackline= boolean(values[14]); 
    fillz=boolean(values[15]); 
    nofillz=boolean(values[16]); 
    scene7 = boolean(values[17]);
    scene8 = boolean(values[18]);
    scene9 = boolean(values[19]);
    scene0 = boolean(values[20]);
     
     
    
  } 
  
    
   // ambientLight(val3%255,val2%255,val1%255);
  
  if(backy) background(0,0,0,20);
  if (whiteline) stroke(255);
  if (noline)noStroke();
  if (blackline)stroke(0);
  if (fillz)fill(val1,val2,val3);
  
   smooth();
  if (scene1) page();
  if (scene2) waveh();
  if (scene3) ripples();
  if (scene4) wall01();
  if (scene5) spyro();
  if (scene6) room();
  if (scene7) trian();
  if (scene8) vegas();
  if (scene9) tcross();
  if (scene0) noisy();
  
    
 
  xoff += random(-0.5,0.5);
  tint(255,255,255,alphavid);
  image(cam, 0, 0);
  tint(255,255,255,255);
  save("cross.png");
 
}



