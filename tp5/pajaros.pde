
class Pajaros {

  // PROPIEDADES > variables

  PImage pajaro;
  float x, y;
  float vel;
  float tam;
  float ang;
  boolean activo;
  
  // CONSTRUCTOR > el "setup de la clase"

  Pajaros () {
   
    // inicializar las propiedades/variables

    tam = 80;
    x = 0;
    y = random (600);
    activo = true;
 
    pajaro = loadImage ("pajaro.png");
  }  

  // METODOS > funciones

  void dibujar() {

    image (pajaro, x, y, tam, tam);
    reciclar ();
  }

  void moverPajaro() {
    x += 4;
    y -= 1;
    
  }

  void reciclar() {
    if ( x >= width) {
      x = -100;
      y = random( height );
  
    }
  }
}
