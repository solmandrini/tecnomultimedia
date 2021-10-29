class Juego {
  int contador; // contador de colisiones
  int nivel; /* nivel pasa por parámetro un valor a las instancias de Camion, para que modifique la velocidad de acuerdo al nivel del juego */
  String estado; // según esta propiedad, será en qué parte del juego estamos
  Fondo fondo; // instancia de clase Fondo 
  Globo globo; // instancia de Auto
  Pajaros [] pajaro; // Camion cargamos en un arreglo, ya que son varias instancias
  int cant; // cantidad de camiones
  int pantalla; // carga el número de imagen de fondo
  int segundos; // es un contador que no se está usando en este ejemplo

  Juego(int cant_) {
    estado = "intro";

    cant = cant_;
    globo = new Globo(width/2, height- 100, 50);
    pajaro = new Pajaros[cant];
    fondo = new Fondo();
    for (int i=0; i<cant; i++) {
      pajaro[i] = new Pajaros (i*80+10);
    }
  }
  void dibujarJuego() {
   
    fondo.dibujar(pantalla); // dibuja el fondo como un background();

    if (estado.equals("intro")) {
      pantalla = 0;
      fill(0, 255, 0, 150);
      rect(width-100, height-50, 100, 50);
    }
    if (estado.equals("ENTER")) {
      pantalla = 1;
      nivel = 1;
    }

    if (estado.equals("jugando")) {
      segundos++;
      chocar(); // ??????????????????????????????

      globo.dibujar();

      for (int i=0; i<cant; i++) {
        pajaro[i].dibujar();
        pajaro[i].moverPajaro(nivel);
      }
      fill(0, 255, 0);
      textSize(30);
      text(contador, width-50, 50);

      if (segundos>600) { // en diez segundos cambia el fondo
        fill(200, 50, 0, 200);
        textSize(25);
        textAlign(CENTER);
        text("CUIDADO! \n LA VELOCIDAD AUMENTA", width/2, height/2);
        pantalla = 3;
        nivel = 2;
      }
    }
    if (contador>5) {
      estado = "PERDIO";
      segundos = 0;
    }
    if (estado.equals("PERDIO")) {
      pantalla = 4;
    }

    // esto que imprime en la consola es para control del programador
    println("Estado Juego: "+ estado + "FONDO num: " + pantalla);
    println("SEGUNDOS "+ segundos + " NIVEL " + nivel);
  }

  /*revisen la colisión! lo que hace es tomar la zona central de cada instancia y evalúa si están en contacto
   con la función dist() */
  void chocar() {
    for (int i=0; i<cant; i++) {
      boolean chocan = dist(pajaro[i].cx, pajaro[i].cy, globo.px, globo.py) < globo.tam/2+globo.tam/2;
      // line(camion[i].cx, camion[i].cy, autito.px, autito.py);

      // autito.tam/2+camion[i].ctam/2 << esto es la mitad del auto + la mitad del camión 
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
  }

  void instrucciones() {
    if (mouseX>width-100 && mouseY >height-50 && estado.equals("intro")) {
      estado = "ENTER";
    }
  }

  void comenzar(int tecla) {
    /*acá ponemos los valores iniciales de arranque */
    if (tecla==ENTER && estado != "jugando") {
      estado = "jugando";
      pantalla = 2;
      segundos = 0;
      contador = 0;
      nivel = 1;
      for (int i=0; i<cant; i++) {
        pajaro[i] = new Pajaros (i*80+10); /* volvemos a construir las instancias para que arranquen fuera de la pantalla */
      }
    }
  }
}