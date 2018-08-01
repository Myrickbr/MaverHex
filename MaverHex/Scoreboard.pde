class Scoreboard{
  float xPos;
  float yPos;
  float xWidth;
  float xHeight;
  int score;
  
  Scoreboard(){
    xPos = 1500;
    yPos = 100;
    xWidth = 300;
    xHeight = 200;
    score = 0;
  }
  void show(){
     fill(244, 89, 66);
     stroke(0,0,0);
     strokeWeight(5);
     rect(xPos,yPos,xWidth,xHeight);
     textSize(50);
     fill(0,0,0);
     text(score, xPos + xWidth/2 -10, yPos + xHeight/2+10);
     
  }
  
}
