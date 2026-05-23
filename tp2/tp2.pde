/*Acevedo Maximo
Comision 3
5/2026
Trabajo Practico 2
*/

int estado;

int contador;

void setup() {
  size(640, 480);
  inicializar();
  fondow = loadImage ("galaxia.jpg");
  imagenuno = loadImage ("vocaloid.jpg");
  imagendos = loadImage ("ProgramaV.jpg");
  imagentre = loadImage ("meiko.jpg");
  imagencuatro = loadImage ("LeonLola.jpg");
  imagencinco = loadImage ("miku.jpg");
  cancionuno = loadImage ("deco.jpg");
  canciondos = loadImage ("rollingGirl.jpg");
  canciontres = loadImage ("Supercell.jpg");
  kasaneteto = loadImage ("kasaneTeto.jpg");
  gumimegpoid = loadImage ("megpoidGumi.jpg");
  fuente = createFont("Cambria Bold", 40);
}

void draw() {
  if ( estado==0 ) {
    
    dibujaPantallaInicio();
  } else if ( estado==1 ) {
  
    dibujaPantallaUno();
  } else if ( estado==2 ) {
  
   dibujaPantallaDos();
    
  }
  else if ( estado==3 ) {
  
   dibujaPantallaTres();
    
  }
    else if ( estado==4 ) {
    
   dibujaPantallaCuatro();
    
  }
    else if ( estado==5 ) {
   
   dibujaPantallaCinco();
    
  }  else if ( estado==6 ) {
   
   dibujaPantallaFinal();
    
  }
}

void mousePressed() {
   println("X: " + mouseX + " | Y: " + mouseY); //para ver las cordenadas en donde presiono y poder ver la posible ubicacion de las imagenes.
  if ( estado==0 ) {
  
    if ( mouseSobreRectangulo( 311, 407, 80, 40 ) ) {
    
      estado = 1;
      contador = 0;
    }
  } else  if ( estado==1 ) {
   
  } else  if ( estado==2 ) {
  
  }
}
