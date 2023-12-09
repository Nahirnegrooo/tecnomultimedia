class Botones {
  constructor(x,y,r) {
   this.x= x;
   this.y=y;
    this.radio = r;
    this.bInicio=true;
  }
  dibujar() {


    fill(200);
    circle(this.x, this.y, this.radio);
  }


  estoyDentroDelBoton (x, y, r) {
    return dist (mouseX, mouseY, x, y) <=r;
  }
}
