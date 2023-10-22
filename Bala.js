class Bala {
  constructor() {
    this.posX = 0; // Debes asignarle las coordenadas iniciales
    this.posY = 0;
    this.disparada = false;
    this.radio = 5; // Radio del círculo de la bala
  }

  dibujar() {
    if (this.disparada) {
      push();
      fill(0, 255, 0); // Color de la bala
      ellipse(this.posX, this.posY, this.radio * 2);
      pop();
    }
  }

  mover() {
    if (this.disparada) {
      this.posY -= 5; // Cambia las coordenadas para mover la bala hacia arriba
    }
  }

  disparar() {
    this.disparada = true;
  }
}

