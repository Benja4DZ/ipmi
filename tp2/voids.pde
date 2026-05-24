void inicio() {
  pantalla = 0;
}



void pantalla1() {
  image (grupo1, en0, noY, siX, siY);

  if (noY < 0) {
    noY++;
  } else {
    image (grupo1, en0, en0, 640, 480);
    fill (255);
    rectMode (CENTER);
    rect (width/2, height/2, 150, 50);
  }
}



void pantalla2() {
}

void pantalla3() {
}

void pantalla4() {
}

void pantalla5() {
}
