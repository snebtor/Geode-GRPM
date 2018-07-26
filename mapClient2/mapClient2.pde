import processing.opengl.*;
PImage img1;
PVector A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f;

void setup(){
size(1280,800,OPENGL);
textureMode(NORMALIZED);
    A = new PVector(476, 37);
    B = new PVector(565,43);
    C=new PVector(749,133);
    D=new PVector(678,133);
    E=new PVector(479,148);
    F=new PVector(372,207);
    G=new PVector(381,154);
    H=new PVector(419,97);
    I=new PVector(271,337);  
    J=new PVector(383,309);
    K=new PVector(527,345);
    L=new PVector(626,343);
    M=new PVector(743,277);
    N=new PVector(788,284);
    O=new PVector(768,339);
    P=new PVector(842,482);
    Q=new PVector(831,565);
    R=new PVector(838,720);
    S=new PVector(725,744);
    T=new PVector(347,751);
    U=new PVector(337,769);
    V=new PVector(477,493);
    W=new PVector(407,645);
    X=new PVector(408,696);
    Y=new PVector(459,729);
    Z=new PVector(149,751);
    a=new PVector(27,712);
    b=new PVector(400,671);
    c=new PVector(337,758);
    d=new PVector(192,778);
    e=new PVector(238,808);
    f=new PVector(288,872);
   
   
   
  background(0);

}


void draw(){
  img1=loadImage("../geode_Client/cross.png");
  noStroke();
  //frameRate(15);
 //translate(0,-100);
 
 //SHAPE 1
 //translate(0,400);
 scale(0.9);
  beginShape();
  texture(img1);
    vertex(A.x,A.y,0.2,0);
    vertex(B.x,B.y,0,0.4);
    vertex(C.x,C.y,1,0);
    vertex(D.x,D.y,1,1);
    vertex(E.x,E.y,0.5,0.9);
    vertex(F.x,F.y,0,1);
    vertex(G.x,G.y,0.5,0.9);
    vertex(H.x,H.y,0,1);
  endShape(CLOSE);
  
  //SHAPE 2
  beginShape();
  texture(img1);
  vertex(F.x,F.y,0.8,0);
  vertex(I.x,I.y,1,0.6);
  vertex(J.x,J.y,1,1);
  vertex(K.x,K.y,0,1);
  vertex(L.x,L.y,0,0);
  vertex(M.x,M.y,0.5,0.1);
  vertex(N.x,N.y,0.8,0);
  vertex(C.x,C.y,1,0.6);
  vertex(D.x,D.y,1,1);
  vertex(E.x,E.y,0,1);
  
  endShape(CLOSE);
  
  //SHAPE 3
  beginShape();
  texture(img1);
  vertex(K.x,K.y,1,1);
  vertex(J.x,J.y,0,1);
  vertex(I.x,I.y,0,0.3);
  vertex(a.x,a.y,0,0);
  vertex(Z.x,Z.y,0.2,0);
  vertex(U.x,U.y,0.6,0);
  vertex(T.x,T.y,1,0);
   vertex(W.x,W.y,0.6,0);
  vertex(V.x,V.y,1,0);
  
  endShape(CLOSE);
  
  //SHAPE 4
  beginShape();
  texture(img1);
  vertex(T.x,T.y,0,0);
  vertex(W.x,W.y,0.5,0);
  vertex(V.x,V.y,1,0);
  vertex(K.x,K.y,1,0.2);
  vertex(L.x,L.y,1,1);
  vertex(M.x,M.y,0.6,1);
  vertex(N.x,N.y,0,1);
  vertex(O.x,O.y,0,0.4);
  vertex(P.x,P.y,1,0.2);
  vertex(Q.x,Q.y,1,1);
  vertex(R.x,R.y,0.6,1);
  vertex(S.x,S.y,0,1);
 
  endShape(CLOSE);
  

 
  
 
  
}
