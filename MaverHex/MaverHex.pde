
//int mxPos,myPos = 0;
Mage maverick = new Mage();

void setup(){    //Displays once, must load images here
  fullScreen();
  frameRate(20);
  background(102,102,153);
  maverick.addImages();
  //Load images into arrays
  
}

int i = 0;

void draw(){    //Loops at framerate, default is 60 fps
  background(102,102,153);
  
  //Now make grass
  fill(66,244,80);
  rect(0,height-50, width, 50);
  
  
  
  if(maverick.action[0]){                                      //Idle Action
    image(idleMage[i], maverick.xPos, maverick.yPos, 150, 180);
  }else if(maverick.action[1]){                                //Running Action    
    image(runMage[i], maverick.xPos, maverick.yPos, 175, 200);
  }else if(maverick.action[2]){                                //Jumping Action
    boolean haveJumped = false;
    
    image(jumpMage[i], maverick.xPos, maverick.yPos, 150, 180);
    
    if(haveJumped && maverick.yPos == 875){
       //maverick.yPos = 875;
       maverick.action[2] = false;
       maverick.action[0] = true;      //Set back to idle position when hit ground
    }else{
      maverick.jump(); 
    }
    haveJumped = true;
    
  }else if(maverick.action[3]){                                //Attacking Action
    image(attackMage[i], maverick.xPos, maverick.yPos, width/8, height/6);
  }else if(maverick.action[4]){                                //Dieing Action
    image(dieMage[i], maverick.xPos, maverick.yPos, width/8, height/6);
  }
   
  
  


  ++i;
  if(i ==5){
    i = 0;
  }
  
}

void keyReleased(){
  maverick.clearAction();
  maverick.action[0] = true;
}

void keyPressed(){
 if(key == CODED){
    if(keyCode == LEFT){
      maverick.clearAction();
      maverick.action[1] = true;
      maverick.xPos -= 20;
    }else if(keyCode == RIGHT){
      maverick.clearAction();
      maverick.action[1] = true;
      maverick.xPos += 20;
    }else if(keyCode == DOWN){
      //PurpleHex.PHvisible = true;
    }else if(keyCode == UP){
      maverick.clearAction();
      maverick.action[2] = true;
    }
      
 }


  
  
  
}
