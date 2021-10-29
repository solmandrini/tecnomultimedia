
class Pajaros {

  int cant = 3;
  PImage [] Pajaros = new PImage[cant];
  float cx, cy, cmov, cdir, ctam;
  boolean activo;
  float bder, bizq;


  Pajaros (float cx_) {

    cx = cx_;
    cy = random(-200, - 400);
    cdir = random(2, 4);
    ctam = 60;
    activo = true;
    cmov = random(0.5, 1);
    bder = cx+ctam;
    bizq = cx-ctam;
    for (int i = 0; i<cant; i++) {
      Pajaros[i] = loadImage("pajaro"+i+".png");
    }
  }

  void dibujar() {

    //  numPa = numPa_;
    image (Pajaros[0], cx, cy, ctam, ctam*2);
    image (Pajaros[1], cx, cy, ctam, ctam*2);
    image (Pajaros[2], cx, cy, ctam, ctam*2);
    //imagen = loadImage("snowflake-"+int(random(50))+".png");
  }

  void moverPajaro(int nivel) {
    if (nivel==1) {
      cdir *= 1;
    } else {
      cdir *= 1.002;
    }


    if (cx>bder || cx <bizq) {
      cmov *= -1;
    }

    if (cy > height+ctam/2) {
      cy = random(-200, - 400);
      activo = true;
    }
    cy += cdir;
    cx += cmov;
  }
}
