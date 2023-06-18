/*Negro Nahir 91502/9     */


// https://youtu.be/6HDPhYDBEhY


PImage ilusion; //voy a utilizar esta imagen de referencia
int cant=14;
color c;
void setup () {
  
  size(800,400);
  rectMode(RADIUS);
  ellipseMode(RADIUS);
 ilusion= loadImage ("ilusion.jpg");
 c= color(random(255),random(255),random(255));
 fill(c);
}

void draw (){
background(0);

image(ilusion,400,0);



blendMode(DIFFERENCE);


for( int i=0; i<cant; i++) {
 
   int alt= height/cant/2;
    float d = dist(width/2, height/2, mouseX, mouseY);
  float maxDist = dist(0, 0, width/2, height/2);
  float g= map(d, random(255), maxDist,random( 255),random( 255)); 
  
  fill(g);
   rect(i, height/2, 390, i*alt);

  
   pushMatrix();
   
   translate( mouseX,mouseY );
      rotate( radians(frameCount) );
      fill(c); 
   ellipse(200, 200, i*alt, i*alt);
  popMatrix();
}

}
void mousePressed(){    //al hacer click, se reinicia el codigo en el setup(), por ende cambia en color

setup();
}
