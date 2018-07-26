import processing.opengl.*;
PImage img1;
PVector A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P;

void setup(){
size(1280,800,OPENGL);
textureMode(NORMALIZED);
    A = new PVector(109, 42);
    B = new PVector(350,28);
    C=new PVector(355,159);
    D=new PVector(213,429);
    E=new PVector(100,252);
    F=new PVector(292,740);
    G=new PVector(138,613);
    H=new PVector(490,761);
    I=new PVector(398,513);
    J=new PVector(542,553);
    K=new PVector(515,93);
    L=new PVector(529,51);
    M=new PVector(427,0);
    N=new PVector(772,80);
    O=new PVector(812,347);
    P=new PVector(828,532);
   
  background(0);

}


void draw(){
  img1=loadImage("../geode_Client/cross.png");
  noStroke();
  //frameRate(15);
 
 //SHAPE 1
  beginShape();
  texture(img1);
    vertex(A.x,A.y,1,1);
    vertex(B.x,B.y,0,1);
    vertex(C.x,C.y,0,0.7);
    vertex(D.x,D.y,0,0);
     vertex(E.x,E.y,1,0);
  endShape(CLOSE);
  
  //SHAPE 2
  beginShape();
  texture(img1);
    vertex(E.x,E.y,1,0);
    vertex(D.x,D.y,1,1);
    vertex(F.x,F.y,0,1);
     vertex(G.x,G.y,0,0);
  endShape(CLOSE);
  
  //SHAPE 3
  beginShape();
  texture(img1);
    vertex(C.x,C.y,0,0.5);
    vertex(I.x,I.y,1,1);
    vertex(D.x,D.y,0,1);
  endShape(CLOSE);
  
  //SHAPE 4
  beginShape();
  texture(img1);
    vertex(D.x,D.y,0,0.5);
    vertex(I.x,I.y,0,0);
    vertex(H.x,H.y,1,0);
    vertex(F.x,F.y,1,1);
  endShape(CLOSE);
  
  //SHAPE 5
  beginShape();
  texture(img1);
    vertex(B.x,B.y,1,1);
    vertex(M.x,M.y,0.5,1);
    vertex(L.x,L.y,0,1);
    vertex(K.x,K.y,0,0);
    vertex(C.x,C.y,1,0);
  endShape(CLOSE);
  
   //SHAPE 6
  beginShape();
  texture(img1);
    vertex(C.x,C.y,1,0);
    vertex(K.x,K.y,1,1);
    vertex(J.x,J.y,0,1);
    vertex(I.x,I.y,0,0);
  endShape(CLOSE);
  
   //SHAPE 7
  beginShape();
  texture(img1);
    vertex(I.x,I.y,1,1);
    vertex(J.x,J.y,0,1);
    vertex(H.x,H.y,0.5,0);
  endShape(CLOSE);
  
  //SHAPE 8
  beginShape();
  texture(img1);
    vertex(L.x,L.y,0,0);
    vertex(N.x,N.y,1,0);
    vertex(K.x,K.y,0,1);
  endShape(CLOSE);
  
   //SHAPE 9
  beginShape();
  texture(img1);
    vertex(K.x,K.y,0,1);
    vertex(N.x,N.y,0,0);
    vertex(P.x,P.y,1,0);
    vertex(J.x,J.y,1,1);
  endShape(CLOSE);
  
   //SHAPE 10
  beginShape();
  texture(img1);
    vertex(J.x,J.y,0,0);
    vertex(P.x,P.y,1,0);
    vertex(H.x,H.y,0,1);
  endShape(CLOSE);
   
   //SHAPE 11
  beginShape();
  texture(img1);
    vertex(N.x,N.y,0,1);
    vertex(O.x,O.y,0,0);
    vertex(P.x,P.y,1,1);
  endShape(CLOSE);
  
 
  
  
}
