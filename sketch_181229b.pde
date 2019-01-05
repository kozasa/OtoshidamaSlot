/**
* otoshidama slot 2019
*/
import java.util.ArrayList;
import java.util.Collections;

double debug1;
String debug2;

// count
int slotY1;
int slotY2;
int slotY3;
boolean slotStopBeforeFlg1;
boolean slotStopBeforeFlg2;
boolean slotStopBeforeFlg3;
boolean slotStopFlg1;
boolean slotStopFlg2;
boolean slotStopFlg3;
int slotStopTime =0;

int stopNumber1;
int stopNumber2;
int stopNumber3;

// const
static final int constX1 = 145;
static final int constX2 = 305;
static final int constX3 = 470;
static final int imageSizeY = 60;
static final int slotSpeed = 8;

// image
PImage startImage;
PImage end10000Image;
PImage end5000Image;
PImage end2000Image;
PImage end1000Image;
PImage end500Image; 
PImage photoSlot;
PImage photoFirst1;
PImage photoFirst2;
PImage photoFirst3;
PImage photoFirst4;
PImage photoFirst5;
PImage photoFirst6;
PImage photoFirst7;
PImage photoFirst8;
PImage photoFirst9;
PImage photoFirst10;
PImage photoFirstYobi1;
PImage photoFirstYobi2;
PImage photoFirstYobi3;
PImage photoSecond1;
PImage photoSecond2;
PImage photoSecond3;
PImage photoSecond4;
PImage photoSecond5;
PImage photoSecond6;
PImage photoSecond7;
PImage photoSecond8;
PImage photoSecond9;
PImage photoSecond10;
PImage photoSecondYobi1;
PImage photoSecondYobi2;
PImage photoSecondYobi3;
PImage photoThird1;
PImage photoThird2;
PImage photoThird3;
PImage photoThird4;
PImage photoThird5;
PImage photoThird6;
PImage photoThird7;
PImage photoThird8;
PImage photoThird9;
PImage photoThird10;
PImage photoThirdYobi1;
PImage photoThirdYobi2;
PImage photoThirdYobi3;



ArrayList<String> listFirst;
ArrayList<String> listSecond;
ArrayList<String> listThird;

void setup(){
  
  
  size(685, 688);
  frameRate(30);
  
  slotY1 = 380-(imageSizeY*9);
  slotY2 = 380-(imageSizeY*9);
  slotY3 = 380-(imageSizeY*9);
  
  // slot image 
  photoSlot = loadImage("slot.png");
  startImage = loadImage("start.png");
  end10000Image = loadImage("end10000.png");
  end5000Image = loadImage("end5000.png");
  end2000Image = loadImage("end2000.png");
  end1000Image = loadImage("end1000.png");
  end500Image = loadImage("end500.png");
  
  // Firstlist
  listFirst = new ArrayList<String>();
  listFirst.add("seven.png");
  listFirst.add("shinnen.png");
  listFirst.add("shinnen.png");
  listFirst.add("osechi.png");
  listFirst.add("osechi.png");
  listFirst.add("osechi.png");
  listFirst.add("yukidaruma.png");
  listFirst.add("yukidaruma.png");
  listFirst.add("yukidaruma.png");
  listFirst.add("yukidaruma.png");
  Collections.shuffle(listFirst);
  photoFirst1 = loadImage(listFirst.get(0));
  photoFirst2 = loadImage(listFirst.get(1));
  photoFirst3 = loadImage(listFirst.get(2));
  photoFirst4 = loadImage(listFirst.get(3));
  photoFirst5 = loadImage(listFirst.get(4));
  photoFirst6 = loadImage(listFirst.get(5));
  photoFirst7 = loadImage(listFirst.get(6));
  photoFirst8 = loadImage(listFirst.get(7));
  photoFirst9 = loadImage(listFirst.get(8));
  photoFirst10 = loadImage(listFirst.get(9));
  photoFirstYobi1 = loadImage(listFirst.get(9));
  photoFirstYobi2 = loadImage(listFirst.get(8));
  photoFirstYobi3 = loadImage(listFirst.get(7));
  // Secondlist
  listSecond = new ArrayList<String>();
  listSecond.add("seven.png");
  listSecond.add("shinnen.png");
  listSecond.add("shinnen.png");
  listSecond.add("osechi.png");
  listSecond.add("osechi.png");
  listSecond.add("osechi.png");
  listSecond.add("yukidaruma.png");
  listSecond.add("yukidaruma.png");
  listSecond.add("yukidaruma.png");
  listSecond.add("yukidaruma.png");
  Collections.shuffle(listSecond);
  photoSecond1 = loadImage(listSecond.get(0));
  photoSecond2 = loadImage(listSecond.get(1));
  photoSecond3 = loadImage(listSecond.get(2));
  photoSecond4 = loadImage(listSecond.get(3));
  photoSecond5 = loadImage(listSecond.get(4));
  photoSecond6 = loadImage(listSecond.get(5));
  photoSecond7 = loadImage(listSecond.get(6));
  photoSecond8 = loadImage(listSecond.get(7));
  photoSecond9 = loadImage(listSecond.get(8));
  photoSecond10 = loadImage(listSecond.get(9));
  photoSecondYobi1 = loadImage(listSecond.get(9));
  photoSecondYobi2 = loadImage(listSecond.get(8));
  photoSecondYobi3 = loadImage(listSecond.get(7));
  // Thirdlist
  listThird = new ArrayList<String>();
  listThird.add("seven.png");
  listThird.add("shinnen.png");
  listThird.add("shinnen.png");
  listThird.add("osechi.png");
  listThird.add("osechi.png");
  listThird.add("osechi.png");
  listThird.add("yukidaruma.png");
  listThird.add("yukidaruma.png");
  listThird.add("yukidaruma.png");
  listThird.add("yukidaruma.png");
  Collections.shuffle(listThird);
  photoThird1 = loadImage(listThird.get(0));
  photoThird2 = loadImage(listThird.get(1));
  photoThird3 = loadImage(listThird.get(2));
  photoThird4 = loadImage(listThird.get(3));
  photoThird5 = loadImage(listThird.get(4));
  photoThird6 = loadImage(listThird.get(5));
  photoThird7 = loadImage(listThird.get(6));
  photoThird8 = loadImage(listThird.get(7));
  photoThird9 = loadImage(listThird.get(8));
  photoThird10 = loadImage(listThird.get(9));
  photoThirdYobi1 = loadImage(listThird.get(9));
  photoThirdYobi2 = loadImage(listThird.get(8));
  photoThirdYobi3 = loadImage(listThird.get(7));
  
}

void draw() {
  
  fill(255);
  // image hyouzi first
  image(photoFirst1, constX1, slotY1);
  image(photoFirst2, constX1, slotY1+imageSizeY);
  image(photoFirst3, constX1, slotY1+imageSizeY*2);
  image(photoFirst4, constX1, slotY1+imageSizeY*3);
  image(photoFirst5, constX1, slotY1+imageSizeY*4);
  image(photoFirst6, constX1, slotY1+imageSizeY*5);
  image(photoFirst7, constX1, slotY1+imageSizeY*6);
  image(photoFirst8, constX1, slotY1+imageSizeY*7);
  image(photoFirst9, constX1, slotY1+imageSizeY*8);
  image(photoFirst10, constX1, slotY1+imageSizeY*9);
  // yobi
  image(photoFirstYobi1, constX1, slotY1-imageSizeY);
  image(photoFirstYobi2, constX1, slotY1-(imageSizeY*2));
  image(photoFirstYobi3, constX1, slotY1-(imageSizeY*3));
  
  // image hyouzi second
  image(photoSecond1, constX2, slotY2);
  image(photoSecond2, constX2, slotY2+imageSizeY);
  image(photoSecond3, constX2, slotY2+imageSizeY*2);
  image(photoSecond4, constX2, slotY2+imageSizeY*3);
  image(photoSecond5, constX2, slotY2+imageSizeY*4);
  image(photoSecond6, constX2, slotY2+imageSizeY*5);
  image(photoSecond7, constX2, slotY2+imageSizeY*6);
  image(photoSecond8, constX2, slotY2+imageSizeY*7);
  image(photoSecond9, constX2, slotY2+imageSizeY*8);
  image(photoSecond10, constX2, slotY2+imageSizeY*9);
  // yobi
  image(photoSecondYobi1, constX2, slotY2-imageSizeY);
  image(photoSecondYobi2, constX2, slotY2-(imageSizeY*2));
  image(photoSecondYobi3, constX2, slotY2-(imageSizeY*3));
  
    // image hyouzi third
  image(photoThird1, constX3, slotY3);
  image(photoThird2, constX3, slotY3+imageSizeY);
  image(photoThird3, constX3, slotY3+imageSizeY*2);
  image(photoThird4, constX3, slotY3+imageSizeY*3);
  image(photoThird5, constX3, slotY3+imageSizeY*4);
  image(photoThird6, constX3, slotY3+imageSizeY*5);
  image(photoThird7, constX3, slotY3+imageSizeY*6);
  image(photoThird8, constX3, slotY3+imageSizeY*7);
  image(photoThird9, constX3, slotY3+imageSizeY*8);
  image(photoThird10, constX3, slotY3+imageSizeY*9);
  // yobi
  image(photoThirdYobi1, constX3, slotY3-imageSizeY);
  image(photoThirdYobi2, constX3, slotY3-(imageSizeY*2));
  image(photoThirdYobi3, constX3, slotY3-(imageSizeY*3));
  
  // bonas window
  rect(120, 47, 441, 147);
  // start window
  image(startImage, 121, 48);
  
  // slot image
  image(photoSlot, 0, 0);
  
  // nakunattara
  
  if(!slotStopFlg1){
    slotY1+=slotSpeed;
  }
  if(!slotStopFlg2){
    slotY2+=slotSpeed;
  }
  if(!slotStopFlg3){
    slotY3+=slotSpeed;
  }
  
  if(slotY1>=380+imageSizeY){
    slotY1 = 380-(imageSizeY*9);
  }
  if(slotY2>=380+imageSizeY){
    slotY2 = 380-(imageSizeY*9);
  }
  if(slotY3>=380+imageSizeY){
    slotY3 = 380-(imageSizeY*9);
  }
  
  // keypress
  if ((keyPressed == true) && (key == ' ') && (slotStopTime == 0)) {
    if(!slotStopFlg1){
      slotStopBeforeFlg1 = true;
    }else if(!slotStopFlg2){
      slotStopBeforeFlg2 = true;
    }else{
      slotStopBeforeFlg3 = true;
    }
    slotStopTime++;
  }
  if(slotStopTime>0){
    slotStopTime++;
    if(slotStopTime>20){
      slotStopTime=0;
    }
  }
  
  //Enter
  if ((keyPressed == true) && (key == ENTER) && (slotStopTime == 0)) {
    slotStopBeforeFlg1 = false;
    slotStopBeforeFlg2 = false;
    slotStopBeforeFlg3 = false;
    slotStopFlg1 = false;
    slotStopFlg2 = false;
    slotStopFlg3 = false;
  }
  
  // slot stop
  if(slotStopBeforeFlg1 && ((slotY1+380)%imageSizeY==(slotSpeed*6))){ //<>//
    slotStopFlg1 = true;
    stopNumber1 = 8-(int)((double)(slotY1+160)/(double)imageSizeY);
    if(stopNumber1<0)stopNumber1+=10;
  }
  if(slotStopBeforeFlg2 && ((slotY2+380)%imageSizeY==(slotSpeed*6))){
    slotStopFlg2 = true;
    stopNumber2 = 8-(int)((double)(slotY2+160)/(double)imageSizeY);
    if(stopNumber2<0)stopNumber2+=10;
  }
  if(slotStopBeforeFlg3 && ((slotY3+380)%imageSizeY==(slotSpeed*6))){
    slotStopFlg3 = true;
    stopNumber3 = 8-(int)((double)(slotY3+160)/(double)imageSizeY);
    if(stopNumber3<0)stopNumber3+=10;
  }
  
  // slot stop after
  if(slotStopFlg3 && slotStopTime == 0){
    hantei();
  }
  
}

// hantei logic
void hantei(){
  
  fill(0);
  
  if(listFirst.get(stopNumber1)=="seven.png" && 
     listSecond.get(stopNumber2)=="seven.png" &&
     listThird.get(stopNumber3)=="seven.png" ){
       
       image(end10000Image, 121, 48);
       
  }else if(listFirst.get(stopNumber1)=="shinnen.png" && 
     listSecond.get(stopNumber2)=="shinnen.png" &&
     listThird.get(stopNumber3)=="shinnen.png" ){
       
       image(end5000Image, 121, 48);
       
  }else if(listFirst.get(stopNumber1)=="osechi.png" && 
     listSecond.get(stopNumber2)=="osechi.png" &&
     listThird.get(stopNumber3)=="osechi.png" ){
       
       image(end2000Image, 121, 48);
       
  }else if(listFirst.get(stopNumber1)=="yukidaruma.png" && 
     listSecond.get(stopNumber2)=="yukidaruma.png" &&
     listThird.get(stopNumber3)=="yukidaruma.png" ){
       
       image(end1000Image, 121, 48);
       
  }else{
    
    image(end500Image, 121, 48);
    
  }
}
