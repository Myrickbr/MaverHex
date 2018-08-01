class PurpleHex{
 int xPos;
 int yPos;
 int widthHex;
 int heightHex;
 int speed;
 boolean PHvisible;
 boolean spellHasBeenCasted;
 
 PurpleHex(int x, int y){      //Constructor
   xPos = x;
   yPos = y;
   widthHex = 30;
   heightHex = 30;
   speed = 75;
   spellHasBeenCasted = false;
 }
 
 void update(){
  fill(167, 66, 244);
  ellipse(xPos, yPos, widthHex, heightHex);
  xPos += speed;
  if(xPos > width){
    recharge(); 
  }
 }
 
 void recharge(){
    xPos = maverick.xPos + 110;
    yPos = maverick.yPos + 40;
   
}
  
  
  
}
