void noisy(){
  beginShape(); 
  for (float x = 0; x <= width+200; x += 200) { 
    fill(67,245,210);
    vertex(x,val2);
    xoff += 0.05;
  }
 
  yoff += 0.01;
  fill(240,206,34);
  vertex(width, height);
  fill(map(val1,0,350,0,255),134,145);
 
 
  //fill(201,val2,34);
  vertex(0, height);
  endShape();
beginShape(); 
  for (float i = 0; i <= width; i += 1) { // increment in x sample arduino is 0.007
    vertex(i,val1);
  }
  fill(250,2,134);
  vertex(width, height);
  fill(map(val1,0,350,0,255),78,145);
  vertex(0, height);
  endShape(CLOSE);



}
