class Bot{
  float xPos;
  float yPos;
  float xWidth;
  float xHeight;
  float speed;
  
  Bot(){
    xPos = width + random(10, 80);
    yPos = random(750, 875);
    xWidth = random(30, 60);
    xHeight = random(30, 60);
    speed = random(30, 50);
  }
  void show(){
    //Create the bot, red color
    fill(244, 66, 66);
    rect(xPos, yPos, xWidth, xHeight); 
    fill(92, 244, 66);
    ellipse(xPos + xWidth/2,yPos + xHeight/2, 15,15);
  }
  void move(){
    xPos -= speed; 
  }
  
}
