
boolean estoyDentroDeZonaCircular( int x, int y, int r ){  

  return dist(mouseX, mouseY, x, y) <= r;
  
}

void dibujarTexto(float x, float y, float ancho, float alto, String texto) {
  textSize(20);
 textAlign(LEFT, CENTER);
  fill(255);
  text(texto, x, y, ancho, alto);
}
