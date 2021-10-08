
class pirata {

  float x, y;
  PImage imagen;

  pirata (float x_, float y_) {
    x = x_;
    y = y_;


    imagen = loadImage ("piratapersonaje1.png");
    imagen.resize(150, 120);
}

  void draw () {
    image (imagen, x, y);
  }


  void moverIzq() {
    if ( keyCode == LEFT )
      x -= 10;
  }

  void moverDer() {
    if ( keyCode == RIGHT )
      x += 10;
  }
}
