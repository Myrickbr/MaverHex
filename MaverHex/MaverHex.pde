
Mage maverick = new Mage();
PurpleHex spell = new PurpleHex(maverick.xPos, maverick.yPos);
Bot[] bots = new Bot[20];
RainDrop[] drops = new RainDrop[100];
Scoreboard scoreboard = new Scoreboard();
int animationCount = 1;

import processing.sound.*;

//SoundFile file
//String audioName = "sample.mp3";
//String path;

void setup(){    
  fullScreen();
  frameRate(20);
  background(102,102,153);
  
  
  //Initialize raindrop array
  for(int i = 0; i < drops.length; ++i){
    drops[i] = new RainDrop();
  }
  //Initialize enemy bot array
  for(int i = 0; i < bots.length; ++i){
    bots[i] = new Bot();
  }
  maverick.addImages();
  
  //path = sketchPath(audioName);
  //file = new SoundFile(this, path);
  //file.play();
}

int imageCounter = 0;

void draw(){    //Loops at framerate, default is 60 fps
  background(201,251,252);
  
  //ADD GRASS/ TERRAIN
  noStroke();
  fill(66,244,80);
  rect(0,height-50, width, 50);
  
  //ADD SCOREBOARD
  scoreboard.show();
  
  //Add Raindrops
  for(int i = 0; i < drops.length; ++i){
     drops[i].show();
     drops[i].fall();
  }
  bots[0].show();
  bots[0].move();
  if(maverick.action[0]){                                      //Idle Action
    image(idleMage[imageCounter], maverick.xPos, maverick.yPos, 150, 180);
  }else if(maverick.action[1]){                                //Running Action    
    maverick.move();
    image(runMage[imageCounter], maverick.xPos, maverick.yPos, 175, 200);
    
  }else if(maverick.action[2]){                                //Jumping Action
    if(maverick.canJump){
     maverick.ySpeed = -80; 
    }
    
    if(maverick.yPos == 875 && maverick.canJump == false){
       maverick.clearAction();
       maverick.action[0] = true; //Set back to idle position when hit ground
       maverick.canJump = true;
       maverick.ySpeed = 0;
    }else{
      maverick.move(); 
      maverick.canJump = false;
    }
    image(jumpMage[imageCounter], maverick.xPos, maverick.yPos, 150, 180);
    
    
  }else if(maverick.action[3]){                          //Attacking Action
     //animationCount is a variable to make sure image only
     //shows through 5 loops for proper animation
    
    if(spell.spellHasBeenCasted){
      spell.update(); 
    }else{
      spell.xPos = maverick.xPos + 110;
      spell.yPos = maverick.yPos + 40;
      spell.spellHasBeenCasted = true;
    }
    //We want to show the image for 5 frames to create
    //attack animation. Then show the idle position
    if(animationCount < 5){
      image(attackMage[imageCounter], maverick.xPos, maverick.yPos, width/8, height/6);
    }else{
      image(idleMage[imageCounter], maverick.xPos, maverick.yPos, 150, 180);
    }
    
    ++animationCount;
  }else if(maverick.action[4]){                                //Dieing Action
    image(dieMage[imageCounter], maverick.xPos, maverick.yPos, width/8, height/6);
  }
   
  ++imageCounter;
  if(imageCounter ==5){
    imageCounter = 0;
  }
  
}

void keyReleased(){
   maverick.xSpeed = 0;
}

void keyPressed(){
 if(key == CODED){
    if(keyCode == LEFT && keyPressed){
      maverick.clearAction();
      maverick.action[1] = true;
      maverick.xSpeed = -20;
      //maverick.xPos -= maverick.xSpeed;
      //maverick.xSpeed = 0;
    }else if(keyCode == RIGHT & keyPressed){
      maverick.clearAction();
      maverick.action[1] = true;
      maverick.xSpeed = 20;
     // maverick.xPos += maverick.xSpeed;
     // maverick.xSpeed = 0;
    }else if(keyCode == DOWN){
      maverick.clearAction();
      maverick.action[3] = true;
      
    }else if(keyCode == UP && keyPressed){
      maverick.clearAction();
      maverick.action[2] = true;
    }
      
 }
  
}
