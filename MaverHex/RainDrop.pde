class RainDrop{
  float xPos;
  float yPos;
  float ySpeed;
  
  RainDrop(){
   xPos = random(0, width); 
   yPos = random(-800, -100);
   ySpeed = random(50,55);
  }
  void fall(){
    yPos = yPos + ySpeed;
    if(yPos > 900){
      xPos = random(0, width); 
      yPos = random(-800, -100);
    }
  }
  
  void show(){
    stroke(138,43,226);
    line(xPos, yPos, xPos, yPos + 10);
  }
  
  
}
