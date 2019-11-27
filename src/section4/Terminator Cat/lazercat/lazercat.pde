PImage cat;
int ace = 10;
int x=344;
int y=202;
import ddf.minim.*;
Minim minim = new Minim(this); 
AudioSample doh;
void setup() {
  size (640,637);
  cat=loadImage("creepy.jpg");
  doh = minim.loadSample("cat-lazer.wav"); 
  background (cat);
}
void draw(){
  
   if(mousePressed){
doh.trigger();
fill(255,0,0);
noStroke();
ellipse(x,y,50,50);
ellipse(x+129,y+10,50,50);
keyPressed();
   }
   else{
    background (cat);
   x=344;
   y=202;
   doh.stop();
   }
}
void keyPressed(){
  x-=1*ace;
  y+=10;
}
