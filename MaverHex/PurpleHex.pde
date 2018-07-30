class PurpleHex{
 int xPos;
 int yPos;
 int widthHex;
 int heightHex;
 boolean PHvisible;
 
 PurpleHex(int x, int y){      //Constructor
   xPos = x;
   yPos = y;
   widthHex = 30;
   heightHex = 30;
 }
 
 void update(){
  fill(167, 66, 244);
  ellipse(xPos, yPos, widthHex, heightHex);
  xPos += 10;
 }
  
  
  
}
