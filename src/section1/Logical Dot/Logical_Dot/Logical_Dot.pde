

void setup() {
  size(600,600);
  background(#FFFFFF);
}

void draw() {
  if (mousePressed) {
        fill(#40403E);
} else {
        fill(#FF0000);
}
 ellipse(300,300,400,400);
}
