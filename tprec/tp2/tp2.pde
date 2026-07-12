/* Benjamín Higuera Berizonce  •  126989/1  •  Comisión 3 */

void setup () {
  size (640, 480);
  Cargas();
}

void draw () {
  background (0);
  conteo++;
  println("\nPantalla "+NroPantalla+" // noXimg: "+noXimg+"\nContador: "+conteo+"\nOpacidad = "+opaco);

  //Funciones propias
  Inicio();

  TextoIntegrantes();
  AnimaciónIntegrantes();

  Pantalla1();
  Pantalla2();
  Pantalla3();
  Pantalla4();
  Pantalla5();

  Final();

//Para activarlo, ir a void Reinicio
  ReinicioAlternativo();
}
