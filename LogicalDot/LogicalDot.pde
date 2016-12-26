 void setup() {
  size(800, 800);
}

void draw() {
  ellipse(255,205,200,200);
  fill(150,0,250);
  if(mousePressed){
    fill(255,255,255);
  }else{
    fill(150,0,255);
  }

}