//Función propia sin parámetros
void grilla() {
  push();
  translate(width/2, 0);
  for (int A=0; A<cantidad; A++) {
    for (int B=0; B<cantidad; B++) {
      if (A<7 || A>17 || B<7 || B>17) {
        fill(colorElegido(circleRojo, circleVerde, circleAzul));
        circle(10+A*16, 10+B*16, 13);
      } else { //Cuando ninguna de las 4 condiciones se cumple
        push();
        rectMode(CENTER);
        translate(10+A*16, 10+B*16);
        rotate(radians(frameCount));
        fill(colorElegido(rectRojo, rectVerde, rectAzul));
        rect(0, 0, 12, 12);
        pop();
      }
    }
  }
  pop();
}

//Función propia con parámetros que SÍ retorna un valor
color colorElegido(boolean rojoVoF, boolean verdeVoF, boolean azulVoF) {
  if (rojoVoF) {
    float r = random(100, 255);
    return color(r, 0, 0);
  } else if (verdeVoF) {
    float g = random(100, 255);
    return color(0, g, 0);
  } else if (azulVoF) {
    float b = random(100, 255);
    return color(0, 0, b);
  } else {
    return color(100);
  }
}

//Función propia con parámetros que NO retorna un valor
void luz(float xLuz, float yLuz, float tamaño) {
  //Consta de una grilla de cuadrados cuyo relleno se basa en la distancia entre cada cuadrado y el puntoLuz
  push();
  for (int xRect=0; xRect<cantidad; xRect++) {
    for (int yRect=0; yRect<cantidad; yRect++) {

      //Pongo límites para que la luz no pase de la zona de la grilla
      float límiteX = constrain(xLuz, width/2, width);
      float límiteY = constrain(yLuz, 0, height);

      //Sacado del video "Ciclo for - Sexta Parte" (minuto 5:23)
      float puntoLuz = dist(límiteX, límiteY, /**/ xRect * tamañoRectFondo +width/2, yRect * tamañoRectFondo); //Distancia entre X e Y de Luz y /**/ la esquina izquierda superior de cada cuadrado de la grilla Fondo
      float opacidad = puntoLuz * 255 / dist(0, 0, tamaño, tamaño); // distancia del mouse * color máximo / distancia máxima

      fill(255, 255, 0, opacidad); //Colores RGB y valor de opacidad)
      rect(xRect * tamañoRectFondo +width/2, yRect * tamañoRectFondo, tamañoRectFondo, tamañoRectFondo);
    }
  }
  pop();
}
