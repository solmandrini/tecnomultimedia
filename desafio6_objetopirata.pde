
pirata p;


void setup () {
  size (600, 200);

p = new pirata (50, 50);

}

void draw () {
 
  background (255);
  p.draw();
}

void keyPressed (){
  p.moverIzq ();
  p.moverDer ();
}
