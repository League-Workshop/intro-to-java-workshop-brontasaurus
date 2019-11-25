PImage mustache;
PImage facemask;
void setup() {
  facemask = loadImage("facemask.jpg");
size(615,409);
facemask.resize(width,height);
mustache = loadImage("mustache.png");
mustache.resize(300,64);
}

void draw() {
background(facemask);
rotateImage(mustache,13);
image(mustache,mouseX,mouseY);
}
void rotateImage(PImage image, int amountToRotate) {
        translate(width/2, height/2);
        rotate(amountToRotate*TWO_PI/360);
        translate(-image.width/2, -image.height/2);
    }
