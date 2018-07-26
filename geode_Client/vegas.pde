void vegas(){

pushMatrix();
translate((width/2)-(val2/2),0,0);
fill(87,val1,val3);
rect(0,0,val2*3,height);
popMatrix();

pushMatrix();
translate((width/2)-(val2/2),0,0);
fill(51,144,val2);
rect(0,0,val2/3,height);
popMatrix();

   pushMatrix();
    translate (width/2,height/2,-val2);
    fill(123,123,val3);
    ellipse(0,0,val1*5,val1*5);
    popMatrix();



}
