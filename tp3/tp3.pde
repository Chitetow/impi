/*ACEVEDO MAXIMO
TP3
COMISION 3
6/2026
VIDEO https://youtu.be/jnyHPetbtzA
*/

float cant    = 25;
float tamaX   = 50;
float tamaY   = 25;
PImage ilusion;

color colorA, colorB;


float anguloIlusion = 0;   
float offsetX       = 0;  


final color COLOR_A_ORIG = color(255);
final color COLOR_B_ORIG = color(0);
final float ANGULO_ORIG  = 0;
final float OFFSET_ORIG  = 0;



void setup() {
  size(800, 400);
  ilusion = loadImage("01.jpg");
  reiniciar();  
}



void draw() {
  background(255);


  pushMatrix();
    translate(200, 200);  
    rotate(anguloIlusion);      
    imageMode(CENTER);
    image(ilusion, 0, 0, 400, 400);
    imageMode(CORNER);
  popMatrix();

  dibujarPatron(offsetX);
}


void dibujarPatron(float desplX) {
  float anchoBarra = tamaX / cant;

  for (int y = 0; y < 400; y += (int)(2 * tamaY)) {
    for (int x = 400; x < 800; x += (int)tamaX) {

      float px = x + desplX;  

 
      for (int i = 0; i < (int)cant; i++) {
        noStroke();
        float t = calcularT(i, cant);        
        fill(lerpColor(colorA, colorB, t));
        rect(px + (anchoBarra * i), y, anchoBarra, tamaY);
      }


      for (int i = 0; i < (int)cant; i++) {
        noStroke();
        float t = calcularT(i, cant);
        fill(lerpColor(colorB, colorA, t));
        rect(px + (anchoBarra * i), y + tamaY, anchoBarra, tamaY);
      }
    }
  }
}


float calcularT(float i, float total) {

  float d = dist(i, 0, total, 0);   

  float t = map(d, 0, total, 1, 0);
  return t;
}


void reiniciar() {
  colorA       = COLOR_A_ORIG;
  colorB       = COLOR_B_ORIG;
  anguloIlusion = ANGULO_ORIG;
  offsetX      = OFFSET_ORIG;
}


void mousePressed() {
  colorA = color(random(255), random(255), random(255));
  colorB = color(random(255), random(255), random(255));
}


void keyPressed() {
  if (key == 'r' || key == 'R') {

    reiniciar();

  } else if (keyCode == LEFT) {

    anguloIlusion -= 0.1;

  } else if (keyCode == RIGHT) {

    anguloIlusion += 0.1;

  } else if (keyCode == UP) {

    if (tamaY < 80) {
      tamaY += 5;
    }

  } else if (keyCode == DOWN) {
   
    if (tamaY > 5) {
      tamaY -= 5;
    }
  }
}
