void trian(){

  
  
  
  pushMatrix();
  for (int i=0; i<height; i+=30){
   fill(255,val3*0.6);
   beginShape();
    vertex(0,i,-val2*5);
    vertex(width,i,-val2*5);
    fill(255);
    //vertex(width,i+30,-val2*10);
    vertex(0,i+30,0);
    
   endShape();
 }
 
 popMatrix(); 
  
  beginShape();
  fill(val1,val2,78);
  vertex(0,0,0);
   fill(val3,67,90);
    vertex(width/2,(width/2)-val1,-val2*10); //center
    fill(123,123,val1);
    vertex(0,height,0);//BL
   endShape();

  beginShape();
    fill(78,val2,78);
    vertex(width,0,0);//TR
     fill(90,val3,67);
     vertex(width/2,(width/2)-val1,-val2*10); //center
    fill(123,123,val1);
    vertex(height,height,0);//BR
   endShape();
   
    beginShape();
    fill(78,val2,78);
    vertex(0,0,0);//TL
     fill(90,val3,67);
     vertex(width/2,(width/2)-val1,-val2*10); //center
    fill(123,123,val1);
    vertex(width,0,0);//TR
   endShape();
   
   pushMatrix();
  // beginShape();
   fill(val1,val2,30);
   translate(-1500,-1500,-1000);
   rect(0,0,3000,3000);
  // endShape();
   
   popMatrix();
   
   //bottom triangle
 
     




}
