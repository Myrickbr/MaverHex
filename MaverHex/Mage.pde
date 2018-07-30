PImage idleMage[] = new PImage[5];
PImage runMage[] = new PImage[5];
PImage jumpMage[] = new PImage[5];
PImage attackMage[] = new PImage[5];
PImage dieMage[] = new PImage[5]; 

class Mage{
  int health;
  int xPos;
  int yPos;
  int xSpeed;
  int ySpeed;
  int xVelo;
  int yVelo;
  boolean [] action = {true, false, false, false, false}; 
  
  Mage(){
   health = 100; 
   xPos = constrain(10, 50, 750); 
   yPos = constrain(875, 700, 875);
   xSpeed = 0;
   ySpeed = -40;
   xVelo = 0;
   yVelo = 10;
  }
  
  void attack(){
    PurpleHex spell = new PurpleHex(xPos, yPos);
    spell.update();
  }
  void clearAction(){  
   for(int i = 0; i < 5; ++i){
      maverick.action[i] = false; 
   }
  }
  void jump(){
    yPos += ySpeed;
     ySpeed += yVelo;
    
  }
  void addImages(){
    
    idleMage[0] = loadImage("IDLE1.png");
    idleMage[1] = loadImage("IDLE2.png");
    idleMage[2] = loadImage("IDLE3.png");
    idleMage[3] = loadImage("IDLE4.png");
    idleMage[4] = loadImage("IDLE5.png");
    runMage[0] = loadImage("RUN1.png");
    runMage[1] = loadImage("RUN2.png");
    runMage[2] = loadImage("RUN3.png");
    runMage[3] = loadImage("RUN4.png");
    runMage[4] = loadImage("RUN5.png");
    jumpMage[0] = loadImage("JUMP1.png");
    jumpMage[1] = loadImage("JUMP2.png");
    jumpMage[2] = loadImage("JUMP3.png");
    jumpMage[3] = loadImage("JUMP4.png");
    jumpMage[4] = loadImage("JUMP5.png");
    attackMage[0] = loadImage("ATTACK1.png");
    attackMage[1] = loadImage("ATTACK2.png");
    attackMage[2] = loadImage("ATTACK3.png");
    attackMage[3] = loadImage("ATTACK4.png");
    attackMage[4] = loadImage("ATTACK5.png");
    dieMage[0] = loadImage("DIE1.png");
    dieMage[1] = loadImage("DIE2.png");
    dieMage[2] = loadImage("DIE3.png");
    dieMage[3] = loadImage("DIE4.png");
    dieMage[4] = loadImage("DIE5.png");
    
  }
   
}
