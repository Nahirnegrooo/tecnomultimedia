class Peter {

 constructor (){
 this.posX= 100;
 this.posY=100;
  this.vida=1;
 this.bala= new Bala();
 this.imagen = loadImage('peter.jpg');
 
 }
 draw() {
 image(this.imagen, this.x, this.y);
 
 }
  movDerecha(){
  
  }
  
  movIzquierda(){
  
  }


}
