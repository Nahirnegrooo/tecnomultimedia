//https://www.youtube.com/watch?v=IPqHphBB-y4

let objJuego;

function setup() {
createCanvas(800,600);

objJuego = new Juego();

}

function draw() {
objJuego.actualizar(); 
objJuego.dibujar();
objJuego.controlarDisparosAGarfio();

}

function keyPressed(){
  
  objJuego.teclaPresionada(keyCode);
  objJuego.keyPressed();
}
