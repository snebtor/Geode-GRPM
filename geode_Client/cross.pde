void tcross(){
  
  smooth();
  pushMatrix();
  translate(crossx.width/2,crossx.height/2);
  rotate(val3*0.001);
  scale(1+val1*0.002);
  shape(crossx);
  popMatrix();

}
