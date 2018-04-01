/* Project: Rocket SpaceShip 
 Created by Altafur Rahman
 Description: A rocketship that can shoot missiles and leaves a trail of fire in space with meteors and stars
 Trail effect referenced from processing https://processing.org/tutorials/arrays/
 Documentation: https://altafur.wordpress.com/2017/10/27/my-final-project-in-the-vestibule/
 */

//Create the object stars into an array of 75
Star[] stars = new Star[75];

//Create the object meteors into an array of 30 
Meteor[] meteors = new Meteor[30];

//Create the object spaceMissiles into an array of 50
Missile[] spaceMissiles = new Missile[50];

//After creating the canvas size, use a for loop to initialize each object
void setup() {
  size(1200, 800);
  for (int i=0; i<stars.length; i++) {
    stars[i] = new Star(random(0, width), random(0, height));
  }
  for (int i=0; i<meteors.length; i++) {
    meteors[i] = new Meteor(random(0, width), random(0, height), random(20, 50), random(20, 50), 3);
  }
  for (int i=0; i<spaceMissiles.length; i++) {
    spaceMissiles[i] = new Missile(8, 16, 10, -40);
  }
}

void draw() {
  background(0);
  displayTrailFire();
  displayShip();
  for (int i=0; i<stars.length; i++) {
    stars[i].displayStar();
  }
  for (int i=0; i<meteors.length; i++) {
    meteors[i].displayMeteor();
    meteors[i].moveMeteor();
  }
  for (int i=0; i<spaceMissiles.length; i++) {
    spaceMissiles[i].activate();
    spaceMissiles[i].displayMissile();
    spaceMissiles[i].move();
  }

}