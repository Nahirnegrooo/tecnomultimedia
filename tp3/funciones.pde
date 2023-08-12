boolean estoyDentroDeZonaCircular( int x, int y, int r ) {  //FUNCION PROPIA CON PARAMETROS QUE RETORNA UN VALOR

  return dist(mouseX, mouseY, x, y) <= r;
}

boolean estoyDentroDeZonaCircular( int x, int y) {        //FUNCION PROPIA CON PARAMETROS QUE RETORNA UN VALOR

  return dist(mouseX, mouseY, x, y) <= 50;
}

void dibujarTexto(float x, float y, float ancho, float alto, String texto) {  //FUNCION PROPIA CON PARAMETROS QUE NO RETORNA UN VALOR
  textSize(20);
  textAlign(LEFT, CENTER);
  fill(255);
  text(texto, x, y, ancho, alto);
}
void pantallaInicio(){
 for (int i = 10; i <= height - 10; i += 10) {
    for (int j = 10; j <= width - 10; j += 10) {
      point(i, j);
    
    }
  }


}
