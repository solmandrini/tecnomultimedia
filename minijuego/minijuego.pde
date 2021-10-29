Juego juego; // instancia de la clase principal que controla al resto

void setup () {
size (400, 600);
juego = new Juego(5);

}
void draw () {
 background (#00B2D3);
juego.dibujarJuego();

  if (keyPressed) {

    juego.moverGlobo(keyCode);
  }
}
void keyPressed() {
  juego.comenzar(keyCode);
}
void mousePressed() {
  juego.instrucciones();
}
