// link a youtube: https://youtu.be/X-spdRFXMl8

PFont courier;
String [] texto;
PImage [] fondo = new PImage[9];
color relleno = color(255);
String estado;

void setup() {

  size(400, 500);
  courier = loadFont ("CourierNewPS-BoldMT-18.vlw");
  estado = "inicio";
  texto= loadStrings("texto.txt");
  for (int i = 0; i<9; i++) {
    fondo[i] = loadImage("fondo"+nf(i)+".jpg");
  }
}
void draw() {
  background(0);
  if (estado.equals("inicio")) {
    image(fondo[0], 0, 0);
    boton(68, 400, 260, 50, "Presiona para comenzar");
  } else if (estado.equals("mapa")) {
    mapa();
  } else if (estado.equals("globo")) {
    globo();
  } else if (estado.equals("muerte1")) {
    muerte1();
  } else if (estado.equals("cielo")) {
    cielo();
  } else if (estado.equals("barco")) {
    barco();
  } else if (estado.equals("muerte2")) {
    muerte2();
  } else if (estado.equals("amanecer")) {
    amanecer();
  } else if (estado.equals("amanecer2")) {
    amanecer2();
  } else if (estado.equals("tumbas")) {
    tumbas();
  } else if (estado.equals("nuevastierras")) {
    nuevastierras();
  
  } else if (estado.equals("fin")) {
    fin();
  }

  println("Estado " + estado);
}
void mousePressed() {
  if (botonPressed(mouseX, mouseY, 68, 400, 260, 50) && estado.equals("inicio")) { // boton izquierdo
    estado = "mapa";
  } else if (botonPressed(mouseX, mouseY, 0, 280, height, width) && estado.equals("mapa")) { // boton derecho
    estado = "globo";
  } else if (botonPressed(mouseX, mouseY, width-200, height-40, 45, 30) && estado.equals("globo")) { // boton inferior derecho
    estado = "muerte1";
  } else if (botonPressed(mouseX, mouseY, width-100, height-40, 45, 30) && estado.equals("globo")) { // boton inferior derecho
    estado = "cielo";
  } else  if (botonPressed(mouseX, mouseY, 140, 295, 120, 30) && estado.equals("cielo") || estado.equals("complicando")) { // boton inferior izquierdo
    estado = "barco";
  } else if (botonPressed(mouseX, mouseY, width-200, height-40, 45, 30) && estado.equals("barco") || estado.equals("complicando")) { // boton derecho
    estado = "amanecer";
  } else if (botonPressed(mouseX, mouseY, width-100, height-40, 45, 30) && estado.equals("barco")) { // boton inferior derecho
    estado = "muerte2";
  } else if (botonPressed(mouseX, mouseY, 0, 390, height, width) && estado.equals("amanecer") || estado.equals("complicando")) { // boton derecho
    estado = "amanecer2";
  } else if (botonPressed(mouseX, mouseY, 0, 390, height, width) && estado.equals("amanecer2") || estado.equals("complicando")) { // boton derecho
    estado = "tumbas";
  } else if (botonPressed(mouseX, mouseY, 0, 390, height, width) && estado.equals("tumbas") || estado.equals("complicando")) { // boton derecho
    estado = "nuevastierras";
  } else if (botonPressed(mouseX, mouseY, 0, 390, height, width) && estado.equals("nuevastierras") || estado.equals("complicando")) { // boton derecho
    estado = "fin";
  }
}


void keyPressed() {
  estado = "inicio";
}
