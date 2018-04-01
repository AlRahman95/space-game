//Create a class for the meteors
class Meteor {
  float metX;
  float metY;
  float metDiam1;
  float metDiam2;
  float metSpeedY;

//Create a constructor to initialize the variables using parameters
  Meteor(float metX_, float metY_, float metDiam1_, float metDiam2_, float metSpeedY_) {
    metX = metX_;
    metY = metY_;
    metDiam1 = metDiam1_;
    metDiam2 = metDiam2_;
    metSpeedY = metSpeedY_;
  }

//Display the meteors
  void displayMeteor() {
    noStroke();
    fill(193, 185, 141, 180);
    ellipse(metX, metY, metDiam1, metDiam2);
  }

//Make the meteors move downwards
  void moveMeteor() {
    metY += metSpeedY;
    if (metY > height) {
      metY = 0;
    }
  }
}