//Create a class for the stars
class Star {
  float starX;
  float starY;
  
//Create a constructor to initialize the variables using parameters
  Star(float starX_, float starY_) {
    starX = starX_;
    starY = starY_;
  }

//Display the stars
  void displayStar() {
    strokeWeight(2);
    fill(255);
    point(starX, starY);
  }
}