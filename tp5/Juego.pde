class Juego {


  // PROPIEDADES (variables)
  // EstadoGeneralDelJuego = menu, jugar, ganar, perder

  int contador; // contador de colisiones

  String estado; // en qué parte del juego estamos
  Fondo fondo; 
  Globo globo; 
  Pajaros [] pajaro; 
  int cant; // cantidad de pajaros
  int nivel; 
  int pantalla; // carga el número de imagen de fondo
  int RESET = 0;
  int frameC = 300;  
  int f = frameCount;


  // CONSTRUCTOR (setup del objeto)
  Juego (int cant_) {

    // inicializar los objetos: jugador, copos, cenizas
    estado = "intro";
    cant = cant_;
    globo = new Globo(width/2-50, height- 130, 80);
    pajaro = new Pajaros[cant];
    fondo = new Fondo();

    //inicializo los objetos de los arreglos
    for (int i=0; i<cant; i++) {
      pajaro[i] = new Pajaros ();
    }
  }

  // METODOS (funciones) 
  void dibujarJuego() {

    fondo.dibujar(pantalla); 

    if (estado.equals("intro")) {
      pantalla = 0;
    }
    if (estado.equals("ENTER")) {
      pantalla = 1;
      nivel = 1;
    }

    if (estado.equals("jugando")) {
      f = 0;
      colision();
      globo.dibujar();

      for (int i=0; i<cant; i++) {
        pajaro[i].dibujar();
        pajaro[i].moverPajaro();
      }

      fill(0);
      textSize(30);
      text(contador, width-50, 50);
    }
    if (contador>=5) {
      estado = "PERDIO";
    } else if ( estado.equals("jugando") ) {
    }

    if (estado.equals("PERDIO")) {
      pantalla = 4;
    }

    if (estado.equals("GANASTE")) {
      pantalla = 5;
    }
    if (frameCount >= frameC && estado.equals("jugando")) {
      estado = "GANASTE";
    }


    println( "frame: " + frameCount );
    println("Estado Juego: "+ estado + "FONDO num: " + pantalla);
  }

  void colision() {
    for (int i=0; i<cant; i++) {
      boolean chocan = dist(pajaro[i].x, pajaro[i].y, globo.px, globo.py) < globo.tam/2+globo.tam/2;

      if (chocan  && pajaro[i].activo) {
        contador++;
        pajaro[i].activo = false;
      }
    }
  }

  void moverGlobo(int tecla_) {
    int tecla = tecla_;
    if (tecla==RIGHT) {
      globo.moverDerecha();
    }
    if (tecla==LEFT) {
      globo.moverIzquierda();
    }
    if (tecla==UP) {
      globo.moverArriba();
    }
    if (tecla==DOWN) {
      globo.moverAbajo();
    }
  }

  void instrucciones() {
    if (mouseX>width-100 && mouseY >height-50 && estado.equals("intro")) {
      estado = "ENTER";
    }
  }

  void comenzar(int tecla) {

    if (tecla==ENTER && estado != "jugando") {
      estado = "jugando";
      pantalla = 2;
      contador = 0;
      frameCount = 0;
      nivel = 1;
      globo.reiniciar ();
      for (int i=0; i<cant; i++) {
        pajaro[i] = new Pajaros ();
      }
    }
  }
  void reciclar() {
    for ( int i = 0; i<cant; i++ ) {
      pajaro[i].reciclar();
    }
  }
}
