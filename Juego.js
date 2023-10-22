class Juego {
  constructor() {
    this.peter = new Peter();
    this.garfio = new Garfio();
    this.wendy = new Wendy();

    this.pantalla = "inicio"; // Estado inicial
    this.espera = millis() + 5 * 1000;
    this.inicio = loadImage("data/fondo.jpg");
    this.ganaste = loadImage("data/ganaste.jpg");
    this.perdiste = loadImage("data/perdiste.jpg");
    this.bala = [];
  }

  actualizar() {
    for (let bala of this.bala) {
      bala.mover();
      if (this.garfio.vida > 0 && this.garfio.colisionaConBala(bala)) {
        this.garfio.recibirDaño(bala.dano);
        bala.marcarEliminar = true;
      }
    }

    this.bala = this.bala.filter((bala) => !bala.marcarEliminar);

    if (this.garfio.vida <= 0) {
      this.pantalla = "perder";
    }

    if (this.garfio.colisionaConWendy(this.wendy)) {
      this.pantalla = "perder";
    }

    if (this.pantalla !== "inicio" && this.pantalla !== "perder") {
      this.peter.mover();
    }
  }

  dibujar() {
    if (this.pantalla === "inicio") {
      background(0);
      if (millis() > this.espera) {
        image(this.inicio, 0, 0, width, height);
        this.peter.dibujar();
        this.garfio.dibujar();
        this.wendy.dibujar();
        for (let bala of this.bala) {
          bala.dibujar();
        }
      } else {
        push();
        fill(255);
        textAlign(CENTER, CENTER);
        textSize(20);
        text("Rescata a Wendy", width / 2, height / 2);
        let falta = this.espera - millis();
        text(round(falta / 1000), width / 2, height / 2 + 100);
        pop();
      }
    } else if (this.pantalla === "ganar") {
      image(this.ganaste, 0, 0, width, height);
      textSize(20);
      fill(255);
      text("¡Ganaste!", width / 2, height / 2);
    } else if (this.pantalla === "perder") {
      image(this.perdiste, 0, 0, width, height);
      textSize(20);
      fill(255);
      text("¡Perdiste!", width / 2, height / 2);
    }
  }

  keyPressed() {
    if (this.pantalla === "jugando") {
      if (key === 'd') {
        this.peter.moverDerecha();
      } else if (key === 'a') {
        this.peter.moverIzquierda();
      } else if (key === ' ') {
        let nuevaBala = this.peter.dispararBala();
        this.bala.push(nuevaBala);
      }
    }
  }
}
