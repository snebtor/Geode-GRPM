import java.io.BufferedWriter;
import java.io.FileWriter;


class Vertx {
 int x, y;
 Vertx(int xV, int yV) {
   x = xV;
   y = yV;
 }
} 

PImage img1;
Vertx[]vertices;
Vertx vx1, vx2, vx3, vx4;
boolean firstpress, polygonClosed, editMode;
int x1, y1, x2, y2, a, verticesIndex;

void setup(){
size(1380,900,P3D);
textureMode(NORMAL);
    
    vertices = new Vertx[1];
    firstpress = editMode = true;
    polygonClosed = false;
    verticesIndex = 0;
    a = 0;
    
  background(0);
}

void draw() {
  if (!editMode) {
    
    for (int i=0; i<vertices.length; i=i+4) {
      img1=loadImage("../geode_Server/cross.png");
      noStroke();
      
      
        //shape 1
      beginShape();
      texture(img1);
      vertex(vertices[i].x, vertices[i].y, 0, 1); 
      vertex(vertices[i+1].x, vertices[i+1].y, 0, 0); 
      vertex(vertices[i+2].x, vertices[i+2].y, 1, 0); 
      vertex(vertices[i+3].x, vertices[i+3].y, 1, 1); 
      endShape(CLOSE);    
    } 
    //editMode = !editMode;
  }
}

void mousePressed() {
  println("mouse is pressed :00000");
  if (firstpress == true){
    x1 = mouseX;
    y1 = mouseY;
    x2 = x1;
    y2 = y1;
    firstpress = false;
    //println("HEREEEE");
    //println(verticesIndex);
    vertices = (Vertx[]) expand(vertices, verticesIndex+1);
    vertices[verticesIndex] = new Vertx(x1, y1);   
  }else{
    x1 = x2;
    y1 = y2;
    x2 = mouseX;
    y2 = mouseY;

    //verticesIndex++;
    if (verticesIndex % 4 > 0 || polygonClosed == true) {
      vertices = (Vertx[]) expand(vertices, verticesIndex+1);
      vertices[verticesIndex] = new Vertx(x2, y2);
      polygonClosed = false;
    } else {
      polygonClosed = true;
      firstpress = true;
    }
  }
}

void mouseReleased(){
  if (verticesIndex % 4 == 0 && firstpress == true) {
    x2 = vertices[vertices.length-4].x;
    y2 = vertices[vertices.length-4].y;
    verticesIndex--;
  }
    verticesIndex++;
   // noStroke();
    stroke(255);
    //strokeWeight(6);
    line(x1, y1, x2, y2);
}

void keyPressed() {
  background(0);
  editMode = false;
}