int startX= 90;
int startY= 200;
int endX= 150;
int endY= 0;
void setup()
{
  size(300,300);
  strokeWeight(10);
  background(0);
  stroke(255,255,255); 
  ellipse(37,170,20,20); //head
  line(37,170,37,245); //body
  line(37,245,17,270); //leg left
  line(37,245,57,270); //leg right
  line(40,215,startX-20,startY+25); //arm
  stroke(140,50,0); //color of wand
  line(startX-20,startY+25,startX,startY); //wand
  stroke(255,255,0);
  ellipse(startX,startY,10,10); //end of wand
}
void draw()
{
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while(endX<300){
    endX=(startX+(int)(Math.random()*100));
    endY=(startY-(int)(Math.random()*75));
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }  
}
void mousePressed()
{
  startX= 90;
  startY= 200;
  endX= 80;
  endY= 200;
}

