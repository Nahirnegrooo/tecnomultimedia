https://youtu.be/tRfFGL1T3M4
//este tp estaba para aprobar, aclaro que en ningun momento me mencionaste q utilice for anidados ;)
int pantallaActual = 0;         //DECLARACIÓN
int c = 18;
String [] texto= new String [14];
PImage[] imagen =  new PImage[c];

void setup() {

  size( 600, 600 );

  for (int i = 0; i < texto.length; i++) {                 //CARGA DE TEXTOS
    texto[i] = loadStrings("texto" + i + ".txt")[0];


    for ( int j= 0; j < c; j++ ) {                         //CARGA DE IMAGENES
      imagen[j] = loadImage( "imagen_" + j + ".jpg" );
    }
  }
}

void draw() {

  if (pantallaActual >= 0 && pantallaActual < imagen.length) {  //INICIO
    image(imagen[pantallaActual], 0, 0);
    dibujarTexto( 100, 510, 150, 70, "INICIO----" );
  }
  if (  estoyDentroDeZonaCircular(200, 550, 60)  ) {    // ACA PROGRAME EL BOTON DE INICIO PARA INICIAR LA AVENTURA
    fill( 0, 0, 200 );
  } else {
    fill( 200 );
  }
  circle( 200, 550, 60 );
  if (pantallaActual >= 1 && pantallaActual < imagen.length) { //P1
    image(imagen[1], 0, 0);
    dibujarTexto(20, 250, 500, 600, texto[0]);
  }
  if (pantallaActual >= 2 && pantallaActual < imagen.length) {   //P2
    image(imagen[2], 0, 0);
    dibujarTexto(20, 250, 500, 600, texto[1]);
  }
  if (pantallaActual >= 3 && pantallaActual < imagen.length) {   //P3 ELEGIMOS UNA OPCIÓN
    image(imagen[3], 0, 0);
    dibujarTexto( 30, 30, 400, 100, "Se dirigen a la ventana. Elija una opcion" );
    if ( estoyDentroDeZonaCircular(90, 550) ) {          //BOTON 1
      //  if ( dist(mouseX, mouseY, 90, 550)<=50 ) {
      fill( 200, 0, 0 );
    } else {
      fill( 200 );
    }
    circle( 90, 550, 50 );
    if ( estoyDentroDeZonaCircular(490, 550) ) {     //BOTON 2
      // if ( dist(mouseX, mouseY, 490, 550)<=50 ) {    // FORMA QUE UTILICÉ ANTERIORMENTE PARA PROGRAMAR LOS BOTONES
      fill( 200, 0, 0 );
    } else {
      fill( 200 );
    }
    circle( 490, 550, 50 );
  }
  if (pantallaActual >= 4 && pantallaActual < imagen.length) { //P4 FINAL 1 QUE SE REINICIA CON LA TECLA "N"
    image(imagen[4], 0, 0);
    dibujarTexto(20, 250, 500, 600, texto[2]);
  }
  if (pantallaActual >= 5 && pantallaActual < imagen.length) {//P5
    image(imagen[5], 0, 0);
    dibujarTexto(20, 250, 500, 600, texto[3]);
  }
  if (pantallaActual >= 6 && pantallaActual < imagen.length) {//P6
    image(imagen[6], 0, 0);
    dibujarTexto(20, 250, 500, 600, texto[4]);
  }
  if (pantallaActual >= 7 && pantallaActual < imagen.length) {//P7
    image(imagen[7], 0, 0);
    dibujarTexto(20, 150, 500, 600, texto[5]);
  }
  if (pantallaActual >= 8 && pantallaActual < imagen.length) {//P8 EN ESTA PANTALLA DEBEMOS ELEGIR UNA OPCIÓN
    image(imagen[8], 0, 0);
    dibujarTexto( 30, 30, 400, 100, "Peter se enferenta con el capitan Garfio. \n Elija una opcion" );

    if ( estoyDentroDeZonaCircular(390, 490) ) {       // programo un boton
      // if ( dist(mouseX, mouseY, 390, 490)<=50 ) {
      fill( 200, 0, 0 );
    } else {
      fill( 200 );
    }
    circle( 390, 490, 50 );
    if ( estoyDentroDeZonaCircular(220, 490) ) {       // programo un boton
      // if ( dist(mouseX, mouseY, 220, 490)<=50 ) {
      fill( 200, 0, 0 );
    } else {
      fill( 200 );
    }
    circle( 220, 490, 50 );
  }
  if (pantallaActual >= 9 && pantallaActual < imagen.length) {//P9
    image(imagen[9], 0, 0);
    dibujarTexto(20, 250, 500, 600, texto[6]);
  }
  if (pantallaActual >= 10 && pantallaActual < imagen.length) {//P10
    image(imagen[10], 0, 0);
    dibujarTexto(20, 250, 500, 600, texto[7]);
  }
  if (pantallaActual >= 11 && pantallaActual < imagen.length) {//P11
    image(imagen[11], 0, 0);
    dibujarTexto(20, 150, 500, 600, texto[8]);
  }
  if (pantallaActual >= 12 && pantallaActual < imagen.length) {//P12
    image(imagen[12], 0, 0);
    dibujarTexto( 20, 250, 500, 600, "Peter gana la batalla");
  }
  if (pantallaActual >= 13 && pantallaActual < imagen.length) {//P13
    image(imagen[13], 0, 0);
    dibujarTexto(10, 180, 500, 600, texto[9]);
  }
  if (pantallaActual >= 14 && pantallaActual < imagen.length) {//P14
    image(imagen[14], 0, 0);
    dibujarTexto(20, 250, 500, 600, texto[10]);
  }
  if (pantallaActual >= 15 && pantallaActual < imagen.length) {//P15
    image(imagen[15], 0, 0);
    dibujarTexto(20, 250, 500, 600, texto[11]);
    //if ( dist(mouseX, mouseY, 150, 350)<=50 ) {
    if ( estoyDentroDeZonaCircular(150, 350) ) {    // BOTON1
      fill( 200, 0, 0 );
    } else {
      fill( 200 );
    }
    circle( 150, 350, 50 );
    if ( estoyDentroDeZonaCircular(75, 460) ) {      //BOTON2
      //if ( dist(mouseX, mouseY, 75, 460)<=50 ) {
      fill( 200, 0, 0 );
    } else {
      fill( 200 );
    }
    circle( 75, 460, 50 );
  }
  if (pantallaActual >= 16 && pantallaActual < imagen.length) {//P16
    image(imagen[16], 0, 0);

    dibujarTexto(20, 150, 500, 600, texto[12]);
  }
  if (pantallaActual >= 17 && pantallaActual < imagen.length) {//P17
    image(imagen[17], 0, 0);
    dibujarTexto(20, 150, 500, 600, texto[13]);
  }
}
void mousePressed() {

  //INTERACIÓN CON EL MOUSE PARA QUE AL PRECIONAR LA PANTALLA PASE A LA OTRA
  //O SI AL TOCAR TAL BOTON PASE A LA PANTALLA TAL

  if ( pantallaActual == 0 && estoyDentroDeZonaCircular(200, 550, 60) ) {  //BOTON DE INICIO, ARRANCA LA AVENTURA
    pantallaActual = 1;
  } else if ( pantallaActual== 1 ) {
    pantallaActual = 2;
  } else  if ( pantallaActual== 2 ) {
    pantallaActual = 3;
  } else if (pantallaActual ==3 && estoyDentroDeZonaCircular(90, 550)) {
    pantallaActual = 4;
  } else if (pantallaActual ==3 && estoyDentroDeZonaCircular(490, 550)) {
    pantallaActual = 5;
  } else if (pantallaActual ==5) {
    pantallaActual=6;
  } else if (pantallaActual ==6) {
    pantallaActual=7;
  } else if (pantallaActual ==7) {
    pantallaActual=8;
  } else if (pantallaActual ==8 && estoyDentroDeZonaCircular(390, 490)) {
    pantallaActual = 9;
  } else if (pantallaActual ==8 && estoyDentroDeZonaCircular(220, 490)) {
    pantallaActual = 12;
  } else if (pantallaActual ==9) {
    pantallaActual=10;
  } else if (pantallaActual ==10) {
    pantallaActual =11;
  } else if (pantallaActual==12) {
    pantallaActual=13;
  } else if (pantallaActual==13) {
    pantallaActual=14;
  } else if (pantallaActual==14) {
    pantallaActual=15;
  } else if (pantallaActual ==15 && estoyDentroDeZonaCircular(150, 350)) {
    pantallaActual=16;
  } else if (pantallaActual ==15 && estoyDentroDeZonaCircular(75, 460)) {
    pantallaActual=17;
  }
}
void keyPressed() {
  if (pantallaActual==4) { //
    if (key == 'n' || key=='N' ) {
      pantallaActual=0;
    }
  }
  if (pantallaActual==11) {
    if (key == 'n' || key=='N' ) {
      pantallaActual=0;
    }
  }
  if (pantallaActual==16) {
    if (key == 'n' || key=='N' ) {
      pantallaActual=0;
    }
  }
  if (pantallaActual==17) {
    if (key == 'n' || key=='N' ) {
      pantallaActual=0;
    }
  }
}
