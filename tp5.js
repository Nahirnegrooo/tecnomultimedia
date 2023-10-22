let objJuego;

function setup() {
createCanvas(800,600);

objJuego = new Juego();

}

function draw() {
 
objJuego.dibujar();

}

function keyPressed() {
  objJuego.keyPressed();
}
