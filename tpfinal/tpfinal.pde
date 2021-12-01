//------------------------------------------------------------------------

// Link a youtube: https://youtu.be/9rAie7Bm45Q


// tp final | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// Mandrini, María Sol - Cian, Luca
// Aventura: Las aventuras de Egg
//

// Juego: Up & Up

/* El objetivo del juego es lograr ganar sin que te choquen los pajaros, si mas de cinco de ellos
   te golpean, perdes.
 
 
 */

//------------------------------------------------------------------------


import processing.sound.*;

SoundFile piew;

aventura a;

void setup() {
  size(400, 500);
  a = new aventura();
piew = new SoundFile (this, "piew.aiff");
}

void draw() {
a.draw();

  
}

void mousePressed(){
 a.mousePressed();      
}

void keyPressed(){
 a.keyPressed(); 
  
}
