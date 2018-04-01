//Create a class for the missiles which will consist of all the variables needed
class Missile {
  float col;
  float rectY;
  float rectWidth;
  float rectHeight;
  float rectRadius;
  float speedY;
  boolean on = false;        //Boolean variable to activate the missiles

//Create the constructor to initialize the variables using parameters
  Missile(float rectWidth_, float rectHeight_, float rectRadius_, float speedY_) {
    rectWidth = rectWidth_;
    rectHeight = rectHeight_;
    rectRadius = rectRadius_;
    speedY = speedY_;
  }

//Create an activate function in which if activate is true, then the rest of the functions below will be executed, else they won't
  void activate() {
    if (mousePressed == true) {
      on = true;
    } else 
    on = false;
  }

//Display the missiles only if the boolean variable, 'on', is set to true
  void displayMissile() {
    if (on == true) {
      noStroke();
      //strokeWeight(2);
      //stroke(161, 163, 135, 200);
      fill(random(255), random(255), random(255));
      rect(mouseX, rectY, rectWidth, rectHeight, rectRadius);
    }
  }

//Move the missiles upwards creating a shooting effect only if 'on' is set to true
  void move() {
    if (on == true) {
      rectY += speedY;
      if (rectY < 0) {
        rectY = mouseY;
      }
    }
  }
}