// Link a youtube (se ve raro y se traba no sé porque :( ):  https://youtu.be/yQMUCALJIas

//------------------------------------------------------------------------

// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// Mandrini, María Sol 
// Las aventuras de Egg
//

// Up & Up

/* El objetivo del juego es lograr ganar sin que te choquen los pajaros, si mas de cinco de ellos
   te golpean, perdes.
 
 
 */

//------------------------------------------------------------------------


Juego juego; 

void setup () {
size (400, 600);
juego = new Juego(6);

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
