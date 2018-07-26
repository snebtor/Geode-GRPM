import processing.opengl.*;
//import cc.arduino.*;
import processing.serial.*;
import processing.net.*;
import codeanticode.gsvideo.*; //GSVideo

Server myServer;
boolean haveClients = false;
//Arduino arduino;
GSMovie cam;

PVector A,B,C,D,E,F;
PImage tex;
PShape crossx;
float t;
int alphavid;

float xoff, yoff;
int[]Xcv = {0, 2, 4, 2};
int[]Ycv= {1, 3, 5, 3};

boolean andruinoThere = false;
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

float val1,val2,val3,val4;

//Package for the net
NetworkPackage netPackage = new NetworkPackage();

void setup(){
size(350,350,OPENGL);

  if (andruinoThere) {
//     arduino = new Arduino(this, Arduino.list()[5], 57600);
//     arduino.pinMode(Xcv[0], Arduino.INPUT);
//     arduino.pinMode(Ycv[0], Arduino.INPUT);
//     arduino.pinMode(Xcv[1], Arduino.INPUT);
//     arduino.pinMode(Xcv[2], Arduino.INPUT);
//     arduino.pinMode(Ycv[1], Arduino.INPUT);
//     arduino.pinMode(Ycv[2], Arduino.INPUT);
  }
  myServer = new Server(this, 5204);
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
  frameRate(24);
}


void movieEvent(GSMovie cam) {
  cam.read();
} 

void draw(){
  lights();
  //ambientLight(val3,val2%255,val1%255);
  //assign minigorille or noise variables
   if (andruinoThere) { // adjust ranges again?
//   val1=map(arduino.analogRead(Xcv[0]), 0, 1023, 0, height);//ambient
//   val3=map(arduino.analogRead(Ycv[0]), 0, 500, 10, height); //percussive
//    val2=map(noise(xoff), 0, 1, 0,val3); //noise version of val3
//    val4=map(arduino.analogRead(Xcv[1]), 0, 1023, 10, height);
  }
  if (!andruinoThere){ 
     val1=int(random(0,height)); 
     val3=map(noise(xoff), 0, 1, 0,height);
    val2=map(noise(xoff), 0, 1, 0,220);
    val4=map(noise(yoff), 0, 1, 0,550);
  }
    //send variables to client
    int values[] = new int[21];
    values[0] = int(val1);
    values[1] = int(val2);
    values[2] = int(val3);
    values[3] = int(val4);
    values[4] = int(backy);
    values[5] = int(scene1);
    values[6] = int(scene2);
    values[7] = int(scene3);
    values[8] = int(scene4);
    values[9] = int(scene5);
    values[10] = int(scene6);
    values[11] = int(alphavid);
    values[12] = int(whiteline);
    values[13] = int(noline);
    values[14] = int(blackline);
    values[15] = int(fillz);
    values[16] = int(nofillz);
    values[17] = int(scene7);
    values[18] = int(scene8);
     values[19] = int(scene9);
      values[20] = int(scene0);
    netPackage.setValues(values);
   // netPackage.print();
    myServer.write(netPackage.getData());
  
  if(backy)background(0,0,0,20);
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


void keyPressed() {
  if ( key == '1' )scene1 = !scene1;
  if ( key == '2' )scene2 = !scene2;
  if ( key == '3' )scene3 = !scene3;
  if ( key == '4' )scene4 = !scene4;
  if ( key == '5' )scene5 = !scene5;
  if ( key == '6' )scene6 = !scene6;
  if ( key == '7' )scene7 = !scene7;
  if ( key == '8' )scene8 = !scene8;
  if ( key == '9' )scene9 = !scene9;
  if ( key == '0' )scene0 = !scene0;
  if ( key == 'a' )whiteline=!whiteline;
  if ( key == 's' )noline=!noline;
  if ( key == 'd' )blackline=!blackline;
  if ( key == 'f' )fillz = !fillz;
  if (key == 'z')  backy=!backy;
  if ( key == 'g' ) nofillz = !nofillz;
  if (keyCode == UP){alphavid+=2; if (alphavid>255) alphavid=255;}
  if (keyCode == DOWN){alphavid-=2; if (alphavid<0) alphavid=0;}
} 

// The serverEvent function is called whenever a new client connects.
void serverEvent(Server server, Client client) {
  println(" A new client has connected: "+ client.ip());
  haveClients = true;
} 
