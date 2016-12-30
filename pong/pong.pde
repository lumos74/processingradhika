import ddf.minim.*;    
PImage backgroundImage;
  Minim minim;        
  AudioSample sound;      
int xPosition=250;
int yPosition=450;
int xSpeed=2;
int ySpeed=1;
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength){
  if(ballY> paddleY && ballX > paddleX && ballX < paddleX + paddleLength){
    return true;
  }
  else
  return false;
}
void setup(){
size(500,500);
minim = new Minim (this);   
}
void draw(){
background(230, 250, 250);
 fill(250,10,100);
ellipse(xPosition,yPosition, 20,20);
stroke(160,30,245);
  fill(30, 120, 230);
  rect(mouseX, 450, 50,10);
  if(intersects(xPosition, yPosition, mouseX, 450, 50)){
    ySpeed=-ySpeed;
  }
if(xPosition<500-xSpeed){
xPosition=xPosition+xSpeed;
}
if(xPosition==500-xSpeed){
  xSpeed=-xSpeed;
}
if(xPosition==0){
  xSpeed=-xSpeed;
}
if(yPosition>0+ySpeed){
yPosition=yPosition-ySpeed;
}
if(yPosition==0+ySpeed){
  ySpeed=-ySpeed;
}
if(yPosition==500){
  System.out.println("You lose! Try again next time!");
  exit();
}

}