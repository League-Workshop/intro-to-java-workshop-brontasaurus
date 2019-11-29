int foodx = (int) random(width-20);;
int foody = 20;
int score = 0;
int foodSpeed = 3;
void checkCatch(int x, int y){
     if(x < mouseX && x > mouseX-45){
          if(y > mouseY-17 && y < mouseY+30){
               score++;
               foodSpeed+=1;
               foody = 20; //if the food was eaten, make more food fall from the top
               foodx = (int) random(width-20);
          }
     }
     else if (foody > height && score > 0){
           println(score);
     }
}
void setup(){
  size(500,500);
}

void draw(){
  background(141,233,237);
  fill(131, 110, 90);
  noStroke();
  ellipse(foodx, foody, 10, 10);
foody+=foodSpeed;
if(foody>500){
  foodx = (int) random(width-20);
  foody=30;
  score--;
  }
  if(score>25){
   textSize(30); //if it’s not big enough
text("you win!", 225, 225); 
stop();
}
fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
drawFish();
checkCatch(foodx,foody);

}
void drawFish(){
     noStroke();
     fill(255,255,255);
     ellipse(mouseX-17,mouseY-17,20,20); //back side eye
     fill(255,200,88);
     ellipse(mouseX,mouseY,90,50); //body
     triangle(mouseX+30,mouseY,mouseX+70,mouseY+30,mouseX+70,mouseY-30); //tail
     stroke(0);
     triangle(mouseX,mouseY,mouseX+15,mouseY+10,mouseX+15,mouseY-10); //side fin
     noStroke();
     fill(255,200,88);
     ellipse(mouseX,mouseY,15,15); //side fin cover
     noStroke();
     fill(255,255,255);
     ellipse(mouseX-25,mouseY-15,20,20); //front eye
     fill(0,0,0);
     ellipse(mouseX-25,mouseY-15,5,5); //pupil
     fill(141,233,237);
     ellipse(mouseX-45,mouseY,25,25); //mouth
}
