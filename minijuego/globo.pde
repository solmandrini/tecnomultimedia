
class Globo {
  PImage globo;
  int px, py, tam;
  
  Globo (int px_, int py_, int tam_) {
    px = px_;
    py = py_;
    tam = tam_;
    globo = loadImage("globo.png");
  }
  void dibujar() {
    fill(255, 0, 0);
    //rect(px, py, tam, tam*2);
    image(globo, px, py, tam, tam*2);
  }
  void moverDerecha() {
    if (px<width-tam/2) {
      px += 5;
    }
  }
  void moverIzquierda() {
    if (px>tam/2) {
      px -= 5;
    }
  }
} 
