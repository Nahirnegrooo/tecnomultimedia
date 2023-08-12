float funcion(float valorBase, float mouse) {

  float resultado = valorBase + (mouse - valorBase) * 0.1;
  return resultado;
}
void drawRectangles(int index) {
  int alt = height / cant / 2;
  float d = dist(width / 2, height / 2, mouseX, mouseY);
  float maxDist = dist(0, 0, width / 2, height / 2);
  float g = map(d, 255, maxDist, 255, 0);

  fill(g);
  rect(600, 200, 200, index * alt); // Dibuja el rectángulo en (600, 200)
}


void drawEllipses(int index) {

  int alt = height / cant / 2;
  pushMatrix();
  translate(funcion(600, mouseX), funcion(200, mouseY));
  
  rotate(radians(frameCount));
  fill(255);
  ellipse(0, 0, index * alt, index * alt); // Dibuja el ellipse en (600, 200)
  popMatrix();
}
