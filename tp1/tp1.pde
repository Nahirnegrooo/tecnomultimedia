String estado;
int c;
PImage   gato1, gato2, gato3, gato4;
int mov;  //movimiento 
PFont fuente1;
float offset = 0;
float easing = 0.05;
boolean estoyDentroDelRect = true;
float x, y, ancho, alto;
void setup () {
  size( 640, 480 );  //resolucion tp1
 
 
gato1= loadImage("gato1.png");
gato2= loadImage("gato2.jpg");
gato3= loadImage("gato3.jpg");
gato4= loadImage("gato4.jpg");

  fuente1 = loadFont("fuente1.vlw");
  textAlign( CENTER, CENTER );
  textFont(fuente1);
  textSize(30);
  x= 420;
  y= 390;
  ancho=150;
  alto=50;

  estado = "inicio";
  
  frameRate( 60 );
}

void draw (){

  mov=frameCount;
   //MAQUINA DE ESTADOS --
  //
  if ( estado.equals("inicio") ) {
    background(53,118,101);
        fill(214,11,11);
    text( "¿Queres conocer 4 datos \n sobre los michis? ", 170, mov);
   fill(22,250,8);
    circle(540,410,150);
    
    fill(255);
    text("continuar",540, 410);
    
   image(gato1,mov,50);
   

} else if (estado.equals("p1") ) {
    background(9,18,170);
    text( "Los gatos a veces bostezan para poner \n fin a la confrontación con otro animal.\nEs básicamente su forma de dejar en\n visto al oponente", 210, mov );
    textSize(20);
    image(gato2, 0,0);  
  float dx = (mouseX-gato2.width/2) - offset; //lo encontre en un ejemplo del reference :)
  offset += dx * easing;
  tint(255, 127);  
  image(gato2, offset, 0);
     //
    
    
   c++;  
    if( c >= 600 ){  
      estado = "p2";
      c = 0; 
    }
    //
  } else if (estado.equals("p2") ) {
    background(185,66,66);
    text( "Cuando los gatos te parpadean lentamente \n es porque se sienten en confianza y es su \n forma de demostrarlo.", 200, 60);
   
    image(gato3, width/2, height/2);
  image(gato3, mouseX, mouseY);
 fill(222,176,90);
    //
    c++;  
    if( c >= 300 ){  
      estado = "p3";
      c = 0;  
    }
 
  }else if (estado.equals("p3") ) {
    background(222,134,90);
    text( "y por ultimo, \n los gatos pueden pasar hasta \n 14 horas dormidos.", 150, 370);
    image(gato4,150,40);
    fill(90,222,143);
    rect( x, y, ancho, alto );
    fill(255);
    text("reiniciar",470,416); //no llegue a terminar pero quiero entregar
    
    estoyDentroDelRect = ( mouseX > x ) && ( mouseX < x+ancho ) && ( mouseY > y) && ( mouseY < y+alto);
  }
  println( estado );

}

void mousePressed() {

  if( estado.equals("inicio") ){
    if( dist(540,410, mouseX, mouseY) < 50 ){
      estado = "p1";
    }
  }
  if( estado.equals("p3") ){
     if ( ( mouseX > x ) && ( mouseX < x+ancho ) && ( mouseY > y) && ( mouseY < y+alto) ){
     estado = "inicio" ;
  }
 
}
}
