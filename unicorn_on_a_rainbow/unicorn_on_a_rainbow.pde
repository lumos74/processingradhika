PImage rainbow;
PImage unicorn;
void setup() {
  size(600,300);  
  rainbow = loadImage("Rainbow.png");  
  rainbow.resize(600,300);
  background(rainbow);
  unicorn = loadImage("unicorn.jpeg"); 
}
void draw() {
  image(unicorn,50,50);
  // 6. Draw the unicorn using: image(PImage image, int xPosition, int yPosition)
 
  // 7. Change the line above so that the unicorn moves with the mouse.
  // 8. You may want to make your unicorn transparent. See these instructions: bit.ly/pretty-unicorn
  // 9. When the mouse is pressed, reload the rainbow background

 
}