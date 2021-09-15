
void mapa() {
  image(fondo[1], 0, 0);
  textSize(15);
  fill (20);
  rect (0, 400, height, width); 
  textFont (courier);
  fill(255);
  text(texto [0], 15, 420);
  text(texto [1], 15, 440);
  text(texto [2], 15, 460);
  text(texto [3], 15, 480);
  text(texto [4], 15, 490);
}
void globo() {
  image(fondo[2], 0, 0);
  textSize(15);
  fill (0);
  rect (0, 400, height, width); 
  textFont (courier);
  fill(255);
  text(texto [5], 16, 420);
  text(texto [6], 16, 440);
  text(texto [7], 16, 460);
  text(texto [8], 16, 480);
  //text(texto [9], 16, 480);
  boton2(width-200, height-40, 45, 30, "Si");
  boton2(width-100, height-40, 45, 30, "No");
}

void muerte1() {
  textSize(30);
  stroke (255, 0, 0);
  line (0, 140, 400, 140);
  fill (0);
  rect (0, 400, height, width); 
  textFont (courier);
  fill(255);
  text(texto [9], 12, 180);
  text(texto [10], 12, 200);
  text(texto [11], 12, 220);
  text(texto [12], 12, 300);
  text(texto [13], 12, 320);
}
void cielo() {
  image(fondo[3], 0, 0);
  textSize(30);
  fill (0, 150);
  rect (0, 160, 400, 180); 
  textFont (courier);
  fill(255);
  text(texto [14], 12, 180);
  text(texto [15], 12, 200);
  text(texto [16], 12, 220);
  text(texto [17], 12, 260);
  text(texto [18], 12, 280);
  boton2(140, 295, 120, 30, "CONTINUAR");
}
void barco() {
  image(fondo[4], 0, 0);
  textSize(15);
  fill (0);
  rect (0, 360, height, width); 
  textFont (courier);
  fill(255);
  text(texto [19], 16, 380);
  text(texto [20], 16, 400);
  text(texto [21], 16, 420);
  text(texto [22], 16, 440);
  text(texto [23], 16, 460);
  boton2(width-200, height-40, 45, 30, "Si");
  boton2(width-100, height-40, 45, 30, "No");
}
void muerte2() {
  textSize(30);
  fill (0);
  rect (0, 400, height, width); 
  textFont (courier);
  fill(255);
  text(texto [24], 12, 180);
  text(texto [25], 12, 200);
  text(texto [26], 12, 220);
  text(texto [27], 12, 300);
  text(texto [28], 12, 320);
}

void amanecer() {
  image(fondo[5], 0, 0);
  textSize(30);
  fill (20);
  rect (0, 390, height, width); 
  textFont (courier);
  fill(255);
  text(texto [29], 15, 410);
  text(texto [30], 15, 430);
  text(texto [31], 15, 450);
  text(texto [32], 15, 470);
  text(texto [33], 15, 490);
}
void amanecer2() {
  image(fondo[6], 0, 0);
  textSize(30);
  fill (20);
  rect (0, 390, height, width); 
  textFont (courier);
  fill(255);
  text(texto [34], 15, 410);
  text(texto [35], 15, 430);
  text(texto [36], 15, 450);
  text(texto [37], 15, 470);
  text(texto [38], 15, 490);
}
void tumbas() {
  image(fondo[7], 0, 0);
  textSize(30);
  fill (20);
  rect (0, 390, height, width); 
  textFont (courier);
  fill(255);
  text(texto [39], 15, 410);
  text(texto [40], 15, 430);
  text(texto [41], 15, 450);
  text(texto [42], 15, 470);
  text(texto [43], 15, 490);
}
void nuevastierras() {
  image(fondo[8], 0, 0);
  textSize(30);
  fill (20);
  rect (0, 390, height, width); 
  textFont (courier);
  fill(255);
  text(texto [44], 14, 410);
  text(texto [45], 14, 430);
  text(texto [46], 14, 450);
  text(texto [47], 14, 470);
  text(texto [48], 14, 490);
  text(texto [49], 14, 490);
}
void fin() {
  textSize(30);
  fill (0);
  rect (0, 400, height, width); 
  textFont (courier);
  fill(255);
  text(texto [50], 12, 500-frameCount);
  text(texto [51], 12, 530-frameCount);
  text(texto [52], 12, 550-frameCount);
  text(texto [53], 12, 620-frameCount);
  text(texto [54], 12, 690-frameCount);
  text(texto [55], 12, 710-frameCount);
  text(texto [56], 12, 760-frameCount);
  text(texto [57], 12, 780-frameCount);
  text(texto [58], 12, 830-frameCount);
  text(texto [59], 12, 850-frameCount);
 

}
