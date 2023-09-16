// Variables del juego
let paddleWidth = 100;
let paddleHeight = 10;
let paddleX;
let ballX;
let ballY;
let ballRadio = 10;
let ballVelX = 5;
let ballVelY = -5;
let bricks = [];
let brickFila = 5;
let brickColm = 10;
let brickWidth = 60;
let brickHeight = 20;
let gameStarted = false; // Variable para controlar si el juego ha comenzado
let brickColors = []; // Arreglo de colores para los ladrillos
let lives = 3; // Vidas del jugador
let score = 0; // Puntuación del jugador
let imageFondo;
let imageFinal;
let gameOver = false; // Variable para controlar si el juego ha terminado

function preload() {

  imageFondo = loadImage("data/fondo.png");
  imageFinal = loadImage("data/final.png");
}

function setup() {
  createCanvas(600, 600);
  paddleX = width / 2 - paddleWidth / 2;
  ballX = width / 2;
  ballY = height - 30;

  // Crear una paleta de colores para los ladrillos
  brickColors = [color(255, 0, 0), color(0, 255, 0), color(0, 0, 255), color(255, 255, 0), color(255, 0, 255)];

  // Crear ladrillos
  for (let i = 0; i < brickFila; i++) {
    bricks[i] = [];
    for (let j = 0; j < brickColm; j++) {
      bricks[i][j] = true; // El ladrillo está vivo
    }
  }
}

function draw() {
  background(imageFondo);

  if (!gameOver) {
    if (gameStarted) {
      // Mover el paddle con el mouse
      paddleX = constrain(mouseX - paddleWidth / 2, 0, width - paddleWidth);

      // Dibuja el paddle
      fill(255);
      rect(paddleX, height - paddleHeight, paddleWidth, paddleHeight);

      // Dibuja la pelota
      fill(255);
      ellipse(ballX, ballY, ballRadio * 2);

      // Dibuja los ladrillos
      for (let i = 0; i < brickFila; i++) {
        for (let j = 0; j < brickColm; j++) {
          if (bricks[i][j]) {
            fill(brickColors[i]); // Asigna un color de la paleta
            rect(j * brickWidth, i * brickHeight, brickWidth, brickHeight);
          }
        }
      }

      // Actualizar posición de la pelota y manejar colisiones
      ballX += ballVelX;
      ballY += ballVelY;

      // Comprobar colisión con las paredes
      if (ballX + ballRadio >= width || ballX - ballRadio <= 0) {
        ballVelX = -ballVelX;
      }

      if (ballY - ballRadio <= 0) {
        ballVelY = -ballVelY;
      }

      // Comprobar colisión con el paddle
      if (
        ballY + ballRadio >= height - paddleHeight &&
        ballX >= paddleX &&
        ballX <= paddleX + paddleWidth
        ) {
        ballVelY = -ballVelY;
      }

      // Comprobar colisión con los ladrillos
      let colm = floor(ballX / brickWidth);
      let fila = floor(ballY / brickHeight);

      if (ballY < brickFila * brickHeight && fila >= 0 && colm >= 0 && bricks[fila][colm]) {
        bricks[fila][colm] = false; // El ladrillo ha sido golpeado
        ballVelY = -ballVelY;
        score += 10; // Aumentar la puntuación
      }

      // Comprobar fin del juego
      if (ballY + ballRadio >= height) {
        lives--;
        if (lives === 0) {
          gameOver = true;
        } else {
          ballX = width / 2;
          ballY = height - 30;
          ballVelX = 5;
          ballVelY = -5;
        }
      }

      // Mostrar vidas y puntuación
      textSize(24);
      fill(255);
      text("Vidas: " + lives, 50, 30);
      text("Puntuación: " + score, width - 180, 30);
    } else {
      // Pantalla de inicio

      textSize(32);
      fill(0);
      textAlign(CENTER, CENTER); // Alinea tanto horizontal como verticalmente
      text("Breakout Game", width / 2, height / 2 - 50);
      textSize(24);
      text("Presiona Enter para comenzar", width / 2, height / 2 + 50);
    }
  } else {
    // Pantalla de fin del juego
    image(imageFinal, 0, 0, width, height);
    textAlign(CENTER);

    // Texto "¡Juego terminado!"
    textSize(32);
    fill(255);
    text("¡Juego terminado!", width / 2, height / 2 - 50);

    // Texto "Puntuación"
    textSize(26);
    fill(255);
    text("Puntuación: " + score, width / 2, height / 2 + 20);

    // Texto "Presiona R para reiniciar"
    textSize(18);
    fill(255);
    text("Presiona R para reiniciar", width / 2, height / 2 + 60);
  }
}

function keyPressed() {
  if (keyCode === ENTER && !gameStarted) {
    gameStarted = true;
    lives = 3;
    score = 0;
    resetBricks();
  }

  if (keyCode === 82 && gameOver) {
    // Tecla 'R' para reiniciar el juego
    gameOver = false;
    gameStarted = false;
    lives = 3;
    score = 0;
    resetBricks();
  }
}

// Reiniciar ladrillos
function resetBricks() {
  for (let i = 0; i < brickFila; i++) {
    for (let j = 0; j < brickColm; j++) {
      bricks[i][j] = true; // Reiniciar todos los ladrillos
    }
  }
}
