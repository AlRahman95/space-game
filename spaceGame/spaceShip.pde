//Create the spaceShip

//Spaceship Cock Pit
void cockPit(float pitDiam) {
  strokeWeight(2);
  stroke(250);
  fill(0, 33, 255);
  ellipse(mouseX, mouseY-30, pitDiam, pitDiam);
}

//Fire Coming Out of the Exhaust
void exhaustFire(float fireDiam1, float fireDiam2) {
  stroke(244, 66, 66);
  fill(150, 19, 91);
  ellipse(mouseX-.5, mouseY+40, fireDiam1, fireDiam2);
}

//Spaceship Body
void shipBody(float bodyWidth, float bodyHeight, float radius) {
  stroke(255);
  fill(23, 45, 155);
  rect(mouseX-15, mouseY-30, bodyWidth, bodyHeight, radius);
}

//Spaceship Left Wing
void shipLeftWing(float lTriX1, float lTriY1, float lTriX2, float lTriY2, float lTriX3, float lTriY3) {
  stroke(255);
  fill(26, 2, 114);
  triangle(lTriX1, lTriY1, lTriX2, lTriY2, lTriX3, lTriY3);
}

//Spaceship Right Wing
void shipRightWing(float rTriX1, float rTriY1, float rTriX2, float rTriY2, float rTriX3, float rTriY3) {
  stroke(255);
  fill(26, 2, 114);
  triangle(rTriX1, rTriY1, rTriX2, rTriY2, rTriX3, rTriY3);
}

//Spaceship Exhaust
void shipExhaust(float exhaustX, float exhaustY, float exhaustWidth, float exhaustHeight) {
  stroke(255);
  fill(23, 45, 155);
  rect(exhaustX, exhaustY, exhaustWidth, exhaustHeight);
} 

//Calling each function 

void displayShip() {
//Spaceship Cock Pit
cockPit(30);

//Fire Coming Out of the Exhaust
exhaustFire(12, 20);

//Spaceship Body
shipBody(30, 60, 5);

//Spaceship Left Wing
shipLeftWing(mouseX-40, mouseY+40, mouseX-15, mouseY-30, mouseX-15, mouseY+20);

//Spaceship Right Wing
shipRightWing(mouseX+40, mouseY+40, mouseX+15, mouseY-30, mouseX+15, mouseY+20);

//Spaceship Exhaust
shipExhaust(mouseX-7.5, mouseY+30, 15, 10);
}