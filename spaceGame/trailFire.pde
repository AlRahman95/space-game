//Create two arrays with 50 elements for the x and y coordinates
int[] xpos = new int[50];
int[] ypos = new int[50];

//Display the arrays
void displayTrailFire() {
for (int i = 49; i > 0; i--) {      //Initialize both arrays starting from 48 all the way to 0
    xpos[i] = xpos[i-1];          
    ypos[i] = ypos[i-1];
  }
  // Add the new values to the beginning of the array
  xpos[0] = mouseX;            
  ypos[0] = mouseY+45;
  // Draw the circles
  stroke(216, 23, 23, 240);
  fill(224, 125, 13, 110);
  for (int i = 0; i < 50; i++) {
    ellipse(xpos[i], ypos[i], i/3.5, i/3);
  }
}