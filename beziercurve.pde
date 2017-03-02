int cX1, cY1, cX2, cY2; // control points
int aX1, aY1, aX2, aY2; // where the curv start and end
/* note global variables */
void setup() {
  size(300,300); 
  noFill();
  aX1 = 85;
  aY1 = 20;
  aX2 = 80;
  aY2 = 80;
  cX1 = 10;
  cY1 = 10;
  cX2 = 90;
  cY2 = 90;
}

void draw()
{background(255);
// set the first control position on left click
if(mousePressed && (mouseButton == LEFT)) {
  cX1 = mouseX;
  cY1 = mouseY; // control point could be swapped with anchor point aX1
  // then save the curve and move it again to make a shape
  // set the first control point to the mouse position right click
}
else if (mousePressed & (mouseButton == RIGHT)) {
  cX2 = mouseX;
  cY2 = mouseY;
}
stroke(255,102,0);
line(aX1, aY1, cX1, cY1);
line(aX2, aY2, cX2, cY2);
stroke(0, 0, 0);
bezier(aX1, aY1, cX1, cY1, cX2, cY2, aX2, aY2);
ellipse(cX1, cY1, 5, 5);
ellipse(cX2, cY2, 5, 5);
println("control1:", cX1, cY1);
println("control2:", cX2, cY2);
}