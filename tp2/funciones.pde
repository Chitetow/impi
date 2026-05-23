

PImage fondow;
PImage imagenuno;
PImage imagendos;
PImage imagentre;
PImage imagencuatro;
PImage imagencinco;
PImage cancionuno;
PImage canciondos;
PImage canciontres;
PImage kasaneteto;
PImage gumimegpoid;
PFont fuente;
void inicializar() {
  estado = 0;
}


boolean mouseSobreRectangulo( float x_, float y_, float ancho_, float alto_  ) {
 
  if ( mouseX>x_-ancho_/2 && mouseX<x_+ancho_/2 &&
    mouseY>y_-alto_/2 && mouseY<y_+alto_/2 ) {
    return true;
  } else {
    return false;
  }
}

void dibujaPantallaInicio() {

  background(#6FD9F5);
  image (fondow, 0, 0, 640, 480);
  fill(255);
  textSize(50);
  textAlign(LEFT);
  textFont(fuente);
  text("V o c a l o i d", 33, 54);
  textSize(20);
  text("Acevedo Maxi", 33, 74);


  rectMode(CENTER);
  fill(#90F56F);
  rect(311, 407, 80, 40);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("iniciar", 311, 407);
}


void dibujaPantallaUno() {
  
  contador++;
  if ( contador>=700 ) {
  
    estado = 2;
    contador=0;
  }


  
  float y = map( contador, 0, 90, 550, -100  );
  y = constrain(y, 43, 550);
  

  background(#F56F9E);
  fill(#F7B9CF);
  noStroke();
  ellipse(29, 53, 100,100);
  ellipse(581, 177, 50, 50);
  ellipse(9, 466, 150, 150);
   ellipse(153, 291, 200, 200);
    ellipse(431, 7, 150, 150);
  fill(255);
  textSize(60);
  textAlign(CENTER);

 fill (#FCF5F7);
  text("Que es Vocaloid?", width*0.5, y );
  if (contador >= 90) {
    float escala = map(contador, 90, 150, 0, 40);  
    escala = constrain(escala, 0, 40);
    textSize(15);
    textAlign(CENTER);
    text("Vocaloid es un software de síntesis de voz, fue desarrollado por Yamaha Corporations", width * 0.5, 125);
    text("permite a los usuarios crear canciones introduciendo letras y melodías",width * 0.5, 125 + 20);
    text("No necesita cantantes reales, utiliza bancos de voz",width * 0.5, 125 + 40);
    text("grabados por actores de doblaje o cantantes profesionales",width * 0.5, 125 + 60);
    image (imagendos, 80, 240, 200, 200);
    image (imagenuno, 356, 240, 250, 200);
  }
}
void dibujaPantallaDos() {
  contador++;
  if ( contador >= 1400 ) {
    estado = 3;
    contador = 0;
  }
  float xBancos = map(contador, 0, 90, 700, 33);
xBancos = constrain(xBancos, 33, 700);
  background(#266ED1);
  fill(#7CB3FF);
  noStroke();
  triangle(452, 35, 433, 460, 629, 167);
  triangle(301, 161, 23, 121, 75, 449);
  fill(#E5F0FF);
  textAlign(LEFT);
  textFont(fuente);
  text("Bancos de Voz", xBancos, 54);

textSize(18);
float xL1 = map(contador, 90, 160, -400, 350);
xL1 = constrain(xL1, -400, 260);

float xL2 = map(contador, 130, 200, -400, 350);
xL2 = constrain(xL2, -400, 260);

float xL3 = map(contador, 170, 240, -400, 350);
xL3 = constrain(xL3, -400, 260);

float xL4 = map(contador, 210, 280, -400, 350);
xL4 = constrain(xL4, -400, 260);
textFont(fuente);
textSize(18);
text("Vocaloid representa a sus bancos de voz,", xL1, 100);
text("con personajes, al ser solo software,", xL2, 130);
text("la empresa decidio darles identidad,", xL3, 160);
text(" para hacerlos mas atracticos", xL4, 190);

float Img = map(contador, 0, 90, 600, 60);
Img = constrain(Img, 60, 600);
image(imagentre, 40, Img, 200, 260); 

float Imgcuatro = map(contador, 30, 120, 600, 205);
Imgcuatro = constrain(Imgcuatro, 205, 600);
image(imagencuatro, 250, Imgcuatro, 350, 250);

float xL5 = map(contador, 250, 320, -400, 43);
xL5 = constrain(xL5, -400, 43);
textSize(14);
text("ellos son los primeros bancos,", xL5, 354);

float xL6 = map(contador, 280, 350, -400, 43);
xL6 = constrain(xL6, -400, 43);
textSize(15);
text("de voz que se crearon", xL6, 354 + 25);
}
void dibujaPantallaTres() {
  contador++;
  if ( contador >= 2200 ) {
    estado = 4;
    contador = 0;
  }
  background(#E140EA);
  fill(#F9A7FF);
  noStroke();
  rect(597, 412, 176, 259, 271, 70, 624, 16);
  rect(350, 366, 49, 307, 41, 461, 324, 427);
  fill(#4A204D);
float xMiku = map(contador, 0, 90, 700, 13);
xMiku = constrain(xMiku, 13, 700);
image (imagencinco, 13, xMiku, 250, 350);
textFont(fuente);
float xR0 = map(contador, 90, 160, -440, 270);
xR0 = constrain(xR0, -440, 270);
textSize(25);
text("HATSUNE MIKU", xR0, 45);
textFont(fuente);
textSize(18);
float xR1 = map(contador, 90, 160, -440, 350);
xR1 = constrain(xR1, -440, 267);
text("en el año 2007, la popularidad de Vocaloid", xR1, 90);
text(" exploto,", xR1, 110);
float xR2 = map(contador, 130, 200, -440, 350);
xR2 = constrain(xR2, -440, 267);
text("con la llegada del nuevo banco de voz", xR2, 135);
text("interpretada", xR2, 155);
float xR3 = map(contador, 170, 240, -440, 350);
xR3 = constrain(xR3, -440, 267);
text("por: Saki Fujita,", xR3, 175);
text("dio vida a Hatsune Miku.", xR3, 193);
float xR4 = map(contador, 210, 280, -440, 350);
xR4 = constrain(xR4, -440, 267);
text("Una cantante virtual", xR4, 215);
text("con un diseño atractivo,", xR4, 230);
float xR5 = map(contador, 210, 280, -450, 350);
xR5 = constrain(xR5, -450, 267);
textSize(13);
text("que logro transformar un software de pago en un fenomeno,", xR5, 245);
float xR6 = map(contador, 210, 280, -440, 350);
xR6 = constrain(xR6, -440, 267);
text("de co-creacion", xR6, 260);
float xR7 = map(contador, 0, 90, 2900, 5);
xR7 = constrain(xR7, 5, 2900);
textSize(12);
text("A diferencia de los cantantes tradicionales, Miku es un lienzo en blanco de código abierto.", xR7, 394);
text(" Al carecer de una personalidad o historia oficial rígida,", xR7, 424);
text(" permitió que miles de productores, ilustradores y animadores crearan un universo infinito de canciones y videos.", xR7, 444);
}
void dibujaPantallaCuatro() {

  contador++;
  if ( contador>=2800 ) {

    estado = 5;
    contador=0;
  }
 float xProductores = map(contador, 0, 90, 700, 150);
xProductores = constrain(xProductores, 150, 700);
  background(#266ED1);
   fill(#9DC7FF);
    noStroke();
  ellipse(316, 226, 500, 500);
   fill(#FFFFFF);
  textAlign(LEFT);
  textFont(fuente);
  textSize(32);
  text("El rol de los productores", xProductores, 54);
  float xU1 = map(contador, 90, 160, 2400, 350);
xU1 = constrain(xU1, 15, 2400);

float xU2 = map(contador, 130, 200, 2200, 15);
xU2 = constrain(xU2, 15, 2200);

float xU3 = map(contador, 170, 240, 2200, 15);
xU3 = constrain(xU3, 15, 2200);

float xU4 = map(contador, 210, 280, 2200, 15);
xU4 = constrain(xU4, 15, 2200);
textFont(fuente);
textSize(18);
text("Usuarios anónimos comenzaron a subir canciones", xU1, 80);
text("a NicoNico Douga y YouTube.", xU1, 100);
text("Productores como Wowaka, ryo (supercell) o DECO27", xU3, 120);
text("lograron millones de reproducciones.", xU3, 140);
text("Vocaloid pasó de ser un software de pago a un movimiento musical global.", xU4, 160);
float craks = map(contador, 0, 90, 600, 300);
craks = constrain(craks, 300, 600);
float titulos = map(contador, 0, 90, 600, 290);
titulos = constrain(titulos, 290, 600);
image(cancionuno, 50, craks, 150, 150);
text("Deco27, Monitoring", 50, titulos);
image(canciondos, 220, craks, 150, 150);
text("Wowaka, RollingGirl", 220, titulos);
image(canciontres, 390, craks, 150, 150);
text("Ryo, SuperCell", 410, titulos);
textSize(32);
textFont(fuente);
text("Canciones mas iconicas", 103, titulos - 70);
}
void dibujaPantallaCinco() {

  contador++;
  if ( contador>=3100 ) {
  estado = 6;
    contador=0;
  }
  background(#58F74B);
  noStroke();
  fill(#F54D4D);
  triangle(0, 480, 640, 0, 0, 0);
  fill(#FFFFFF);
   float Movimiento = map(contador, 0, 90, 700, 210);
Movimiento = constrain(Movimiento,210, 700);
textFont(fuente);
textSize(35);
text("Vocaloid Hoy en dia", Movimiento, 50);
float teto = map(contador, 0, 90, 700, 13);
teto = constrain(teto, 13, 700);
image (kasaneteto, 13, teto, 150, 250);
float gumi = map(contador, 0, 90, 700, 247);
gumi = constrain(gumi, 247, 700);
image (gumimegpoid, 475, gumi, 150, 250);
float B1 = map(contador, 90, 160, 2400, 208);
B1 = constrain(B1, 208, 2400);

float B2 = map(contador, 130, 200, 2200, 208);
B2 = constrain(B2, 208, 2200);

float B3 = map(contador, 170, 240, 2200, 200);
B3 = constrain(B3, 200, 2200);

float B4 = map(contador, 210, 280, 2200, 200);
B4 = constrain(B4, 200, 2200);
textFont(fuente);
textSize(18);
text("El éxito de Vocaloid inspiró otros", B1, 75);
text(" sintetizadores de voz", B1, 95);
text("Ejemplos: UTAU (gratuito)", B2, 115);
text("CeVIO, Synthesizer V.", B2, 130);
text("Cada uno aportó nuevas funciones:", B3, 155);
text(" mayor naturalidad, edición más sencilla, etc", B3 + 20, 175);
float nameteto = map(contador, 0, 90, 2400, 84);
nameteto = constrain (nameteto, 84, 2400);
text("Kasane teto", nameteto, 283);
text("UTAU", nameteto, 303);
float namegumi = map(contador, 0, 90, 2400, 490);
namegumi = constrain (namegumi, 490, 2400);
text("Megpoid Gumi", namegumi, 220);
text(" Synthesizer V", namegumi, 240);
float ultimo = map(contador, 250, 320, 2400, 43);
ultimo = constrain (ultimo, 23, 2400);
textFont(fuente);
textSize(15);
text ("Actualmente, Vocaloid 6 (2022) incorpora inteligencia artificial", ultimo, 354);
textSize(14);{
text ("Mejoras: afinación automática, control de emoción, múltiples idiomas.", ultimo, 374);}
text ("El software sigue vigente más de 20 años después de su creación.", ultimo, 394);

}
void dibujaPantallaFinal() { 
  rectMode(CENTER);
  fill(#90F56F);
  rect(320, 240, 120, 40);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("reiniciar", 320, 240);

  if (mousePressed && mouseSobreRectangulo(320, 240, 120, 40)) {
    estado = 0;
    contador = 0;
  }
}
