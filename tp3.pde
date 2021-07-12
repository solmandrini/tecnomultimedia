// https://www.youtube.com/watch?v=SNTtGYN4CmM&ab_channel=SolMandrini

color negro =0;
color Bnegro = 0;
color naranja = color (255, 64, 0);

void setup() {
  size (400, 400);
}

void draw() {
  background(Bnegro);
  strokeWeight(3);
  
  for (int i= 0; i<width; i=i+10) {

    float mx = map (mouseX, 0, 400, i, 0);
    stroke (naranja); 
    line(mx, 0, 2, 400);
    line(400, 0, mx, 400);
  }
  for (int i=0; i<width; i=i+6) {
    stroke (negro);
    line(i, 0, 2*i, 200);
    line(2*i, 200, i, 400);
  }
stroke (255);
fill (#F79346);
rect (5, 5, 20, 20);
}

void mouseMoved () {
  boolean area = (mouseX > 255) && (mouseX < 400);
  if (area) {
    Bnegro = 255;
  } else {
    Bnegro = 0;
  }
}
void keyPressed () {
  if (key == 'n') {
    noLoop ();
  }
  if (key == 'l') {
    loop ();
  }
  if (key == ' '); 
  {
    naranja = color (random (255), random (255), random (43));
  }
}
// boton reinicio 
void mouseClicked () {
rect (5, 5, 20, 20);
boolean boton = (mouseX >5) && (mouseX <25) && (mouseY >5) && (mouseY < 20);
if (boton) {
  naranja = color (255, 64, 0);
} 
}
