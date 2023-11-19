class Bala{
  constructor(posX, posY){
    this.posX = posX;
    this.posY = posY;
    this.disparada = false;
  }
  
  dibujar(){
    if(this.disparada){
      fill(0);
      ellipse(this.posX, this.posY, 5, 5);
      this.mover();
    }
  }
  
  mover(){
    this.posY-=5;
  }
  
  disparar(){
    this.disparada = true;
  }
  
}
