// contexto: Maxwell the cat es un gato que se hizo viral y hasta tiene su propio juego//

PImage maxwell;

void setup () {
size(800,400);
maxwell= loadImage ("maxwell.jpg");
}

void draw(){
background(110,225,252);
image(maxwell,400,0);

//FONDO
fill(25,167,24);
rect(0,276,400,150);
fill(160,130,76);
rect(330,160,20,115);

fill(30,230,89);
triangle(335,163,285,237,400,236);
triangle(335,90,290,171,395,185);
triangle(335,30,286,116,383,101);

fill(255);
noStroke();
ellipse(40,50,70,60);
ellipse(90,30,80,60);
ellipse(122,55,60,50);
ellipse(76,61,40,20);


//CUERPO//

fill(0);
circle(80,220,110);
rect(90,170,50,104);
rect(140,170,60,70);
triangle(140,274,210,260,140,200);

fill(203,201,201);
stroke(0);
ellipse(210,215,70,80);


fill(0);
circle(180,240,60);
rect(200,230,10,30);
circle(200,250,30);
ellipse(200,180,90,80);
triangle(230,230,231,247,242,232);
triangle(230,230,244,221,242,232);
circle(241,227,9);
circle(236,237,10);

//OREJAS//

triangle(140,150,157,171,170,150);
triangle(220,125,210,137,220,146);
ellipse(203,145,36,18);

//CARA//
fill(175,173,173);
noStroke();
ellipse(198,197,67,42);
ellipse(225,187,30,25);
fill(0);
triangle(161,193,193,213,175,223);
ellipse(188,214,10,9);
ellipse(178,185,60,18);
circle(200,250,40);
circle(200,182,37);
ellipse(222,179,30,38);

//OJOS//

fill(151,152,81);
ellipse(222,164,13,10);

ellipse(192,172,13,10);

fill(0);
ellipse(191,171,9,7);

ellipse(221,163,9,7);

fill(255);
ellipse(190,170,2,2);
ellipse(221,161,3,2);
noLoop();

 
//BIGOTES//

 stroke(255);
 line(198,186,168,199);
 line(196,187,161,187);
 line(198,187,163,178);
 line(198,186,166,200);
 line(198,186,162,198);
 line(198,186,160,183);

 line(227,182,260,193);
 line(227,182,256,174);
 line(227,182,263,185);
 line(228,188,258,191);
 line(228,188,259,173);
 line(227,185,260,177);





}
