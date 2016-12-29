import ddf.minim.*;       
  Minim minim;        
  AudioSample sound;      
int xPosition=250;
int yPosition=450;
int xSpeed=2;
int ySpeed=1;
void setup(){
size(500,500);
minim = new Minim (this);   
sound = minim.loadSample("BD.mp3", 128);
}
void draw(){
background(230, 250, 250);
 sound.trigger();  
 fill(250,10,100);
ellipse(xPosition,yPosition, 20,20);
stroke(160,30,245);
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
  ySpeed=-ySpeed;
}
}