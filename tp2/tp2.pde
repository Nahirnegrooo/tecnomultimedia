PImage ilusion;
int cant = 14;
boolean blendActive = false; 

void setup() {
  size(800, 400);
  rectMode(RADIUS);
  ellipseMode(RADIUS);
  ilusion= loadImage ("ilusion.jpg");


}

void draw() {
  background(0);

  image(ilusion, 0, 0);

  if (blendActive) {
    blendMode(DIFFERENCE); // Activa el blendMode si blendActive es true
  }

  for (int i = 0; i < cant; i++) {
    drawRectangles(i);
    drawEllipses(i);
  }

  if (blendActive) {
     blendMode(NORMAL); // Desactiva el blendMode si blendActive es true
  }
}

void mousePressed() {
  blendActive = !blendActive;// Cambia el estado del blendActive al tocar el mouse

  
}
