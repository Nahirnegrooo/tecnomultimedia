class Pantallas { // principal donde se dibuja juego botones etc

  constructor() { // no lo estamos usando
    this.boton1 = new Botones(150, 500, 60);
    this.boton2= new Botones (550, 500, 60);
    this.pantallaActual= 0; //estado
    this.imgInicio= loadImage("data/img0.jpg");
    this.img1= loadImage("data/img1.jpg");
    this.img2= loadImage("data/img2.jpg");
    this.img3= loadImage("data/img3.jpg");
    this.img4= loadImage("data/img4.jpg");
    this.img5= loadImage("data/img5.jpg");
    this.img6= loadImage("data/img6.jpg");
    this.img7= loadImage("data/img7.jpg");
    this.imgFinal1= loadImage("data/img8.jpg");
    this.imgFinal2= loadImage("data/img9.jpg");
    this.img10= loadImage("data/img10.jpg");
    this.img11=loadImage("data/img11.jpg");

    this.juego= new Juego(this);
  }


  dibujar() {

    if (this.pantallaActual == 0) {
      image(this.imgInicio, 0, 0);
      this.boton1.dibujar(150, 500, 60);
      fill(255);
      textSize(20);
      text("Presione el boton para iniciar", 200, 510);
    } else if (this.pantallaActual  == 1 ) {
      image(this.img1, 0, 0);
      fill(255);
      textSize(20);
      text("Peter llega a la casa de los Darling, en busca de algo", 50, 550);
    } else if (this.pantallaActual  == 2 ) {
      image(this.img2, 0, 0);
      this.boton1.dibujar(150, 500, 60);
      this.boton2.dibujar(550, 500, 60);
      fill(255);
      textSize(20);
      text("Conoce a los niños y el les propone vivir una gran aventura", 50, 570);
    } else if (this.pantallaActual == 3 ) {
      image(this.img3, 0, 0);
      this.boton1.dibujar(150, 500, 60);
      fill(255);
      textSize(20);
      text("los niños les comunican a sus padres del extraño intruso y  \n ellos llaman a la policia", 50, 540);
    } else if (this.pantallaActual == 4 ) {
      image(this.img4, 0, 0);
      fill(255);
      textSize(20);
      text("Peter y los niños se dirigen volando a Nunca Jamas", 100, 500);
    } else if (this.pantallaActual == 5 ) {
      image(this.img5, 0, 0);
      fill(255);
      textSize(20);
      text("Conocen a los niños perdidos", 100, 500);
    } else if (this.pantallaActual == 6 ) {
      image(this.img6, 0, 0);
      fill(255);
      textSize(20);
      text("Tambien conocen al capitan Garfio, enemigo de Peter", 100, 500);
    } else if (this.pantallaActual == 7 ) {
      image(this.img7, 0, 0);
      fill(255);
      textSize(15);
      text("Garfio secuestra a Wendy y ocurre un enfrentamiento entre Peter, \n toca el boton para ayudar a Peter a salvar a Wendy disparando a Garfio", 10, 570);
      this.boton1.dibujar( 150, 500, 60);
    } else if (this.pantallaActual == 8 ) {
      image(this.imgFinal1, 0, 0);
      fill(255);
      textSize(20);
      text("Oh no, Garfio a llegado a Wendy, y secuestro a los demas niños", 150, 500);
      this.boton1.dibujar(150, 500, 60);
    } else if (this.pantallaActual ==9 ) {
      image(this.imgFinal2, 0, 0);
      fill(255);
      textSize(20);
      text("Peter salvo  a Wendy de Garfio, ¡Ganaste!", 200, 500);
      this.boton1.dibujar(150, 500, 60);
    } else if (this.pantallaActual == 10) {
      image(this.img10, 0, 0);
      this.manejarJuego();
    } else if (this. pantallaActual == 11) {
      image(this.img11, 0, 0);
      this.boton1.dibujar(150, 500, 60);

      textSize(20);
      text(" Oh no! Le disparaste a Wendy sin querer y se unio al equipo de Garfio", 100, 550);
      fill(255);
    }
  }



  botonPresionado() {
    if (this.boton1.estoyDentroDelBoton (150, 500, 60) && (this.pantallaActual==0)) {
      this.bInicio= true;
      this.pantallaActual = 1;
    } else if (this.pantallaActual==1) {
      this.pantallaActual= 2;
    } else if (this.boton1.estoyDentroDelBoton (150, 500, 60) && (this.pantallaActual ==2)) {
      this.bInicio= true;
      this.pantallaActual = 3;
    } else if (this.boton1.estoyDentroDelBoton (150, 500, 60) && (this.pantallaActual ==3)) {
      this.bInicio= true;
      this.pantallaActual = 0;
    } else if (this.boton2.estoyDentroDelBoton (550, 500, 60) && (this.pantallaActual ==2)) {
      this.bInicio= true;
      this.pantallaActual = 4;
    } else if (this.pantallaActual ==4) {

      this.pantallaActual= 5;
    } else if (this.pantallaActual==5) {

      this.pantallaActual= 6;
    } else if (this.pantallaActual==6) {

      this.pantallaActual=7;
    } else if (this.boton1.estoyDentroDelBoton (150, 500, 60) && (this.pantallaActual ==7)) {
      this.bInicio= true;
      this.pantallaActual = 10;
    } else if (this.boton1.estoyDentroDelBoton (150, 500, 60) && (this.pantallaActual ==8)) {
      this.bInicio= true;
      this.pantallaActual = 0;
      this.juego.reiniciar();
    } else if (this.boton1.estoyDentroDelBoton (150, 500, 60) && (this.pantallaActual ==9)) {
      this.bInicio= true;
      this.pantallaActual = 0;
      this.juego.reiniciar();
    } else if (this.boton1.estoyDentroDelBoton (150, 550, 60) && (this.pantallaActual==11)) {
      this.bInicio = true;
      this.pantallaActual= 0;
      this.juego.reiniciar();
    }
  }

  cambiarPantalla(id) {
    this.pantallaActual = id;
  }

  manejarJuego() {
    this.juego.actualizar();
    this.juego.dibujar(this.pantallaActual, this.img10);
    this.juego.controlarDisparosAGarfio();
    this.juego.controlarDisparosAWendy();
  }

  reinicioConTecla() {
    if (keyCode=== ENTER ) {
      if (this.pantallaActual=== 8) {
        this.pantallaActual = 0;
        this.juego.reiniciar();
      } else if (this.pantallaActual=== 9) {
        this.pantallaActual= 0;
        this.juego.reiniciar();
      } else if (this.pantallaActual === 11) {
        this.pantallaActual= 0;
        this.juego.reiniciar();
      }
    }
     this.juego.teclaPresionada(keyCode);
  }
 

 
 
}
