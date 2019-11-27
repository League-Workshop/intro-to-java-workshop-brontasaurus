int foodx = 100;
int foody = 20;

void setup(){
  size(500,500);
}

void draw(){
  background(141,233,237);
  fill(131, 110, 90);
  noStroke();
  ellipse(foodx, foody, 10, 10);
foody+=2;
if(foody>500){
  foody=20;
}
}
