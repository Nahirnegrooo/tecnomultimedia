
class Wendy {
  constructor() {
    this.posX = 5;
    this.posY = 50;
    this.tamX = 150;
    this.tamY = 150;
    this.img = loadImage("data/wendy.png");
    //this.velocidad= 1;
    this.vida= 2;
  }

  dibujar() {
    image(this.img, this.posX, this.posY, this.tamX, this.tamY);
  }

 colisionaConBala(bala) {
    if ( bala.posX + bala.ancho >= this.posX && bala.posX <= this.posX + this.tamX && bala.posY + bala.alto >= this.posY && bala.posY <= this.posY + this.tamY) {
     this.velocidad=0;
     return true; // La bala colisionó con Wendy
    }
    return false;
  }
    recibirDaño(daño) {
    if (this.vida > 0) {
      this.vida -= daño;
      if (this.vida < 0) {
        this.vida = 0;
      }
    }
  }
}
