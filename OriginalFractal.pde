
public void setup() {
  size(600,600);
  background(0);
}
public void draw(){
  fill(155,155,255);
  myFractal(380,380,180,180);
  myFractal(150,150,180,180);

}


public void myFractal(int x, int y, int siz, int siz2){
  rect(x, y, siz/2, siz/2);

  if(siz>10){
    pushMatrix();
    translate(x-siz/2,y);
    rotate(-PI/4);
    myFractal(0,0, siz/2, siz2/2);
    popMatrix();

    pushMatrix();
    translate(x+siz/2,y-siz/2);
    rotate(PI/4);
    myFractal(0,0, siz/2, siz2/2);
    popMatrix();
    
   
    pushMatrix();
    translate(x+siz/2,y+siz/2);
    rotate(PI/4);
    myFractal(0,0, siz/2, siz2/2);
    popMatrix();
    
  }

}