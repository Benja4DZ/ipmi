void keyPressed() {
  if (key=='r') {
    circleRojo = !circleRojo; // Alterna entre true y false
    circleVerde = false;
    circleAzul = false;
  }
  if (key=='g') {
    circleRojo = false;
    circleVerde = !circleVerde;
    circleAzul = false;
  }
  if (key=='b') {
    circleRojo = false;
    circleVerde = false;
    circleAzul = !circleAzul;
  }
  if (key=='R') {
    rectRojo = !rectRojo;
    rectVerde = false;
    rectAzul = false;
  }
  if (key=='G') {
    rectRojo = false;
    rectVerde = !rectVerde;
    rectAzul = false;
  }
  if (key=='B') {
    rectRojo = false;
    rectVerde = false;
    rectAzul = !rectAzul;
  }
  if (key==' ') {
    circleRojo = false;
    circleVerde = false;
    circleAzul = false;

    rectRojo = false;
    rectVerde = false;
    rectAzul = false;
  }
}
