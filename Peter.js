class Peter{
  constructor(){
    this.posX = 300;
    this.posY = 550;
    this.tamX= 200;
    this.tamY=200;
    this.img= loadImage("data/peter.png");
   this.bala = new Bala(); 
    this.velocidad = 2; 
  }
  dibujar(){
    push();
    imageMode(CENTER);
    image (this.img, this.posX, this.posY,this.tamX, this.tamY);
    pop();
    // Dibuja la bala si está disparada
    if (this.bala.disparada) {
      this.bala.dibujar();
    }
  }
 moverDerecha() {
    this.posX += this.velocidad;
  }

  moverIzquierda() {
    this.posX -= this.velocidad;
  }

 dispararBala() {
  if (!this.bala.disparada) {
    this.bala.disparar(); // Llama al método disparar en this.bala
  }
}
  
haGolpeado(garfio) {
    let d = dist(this.posX, this.posY, garfio.posX, garfio.posY);
    return d < 10;
  }
}
