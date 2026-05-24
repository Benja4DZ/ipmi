/*Debe haber variables y condicionales
 
 1. Mínimo 5 pantallas, con una imagen y un texto
 2. Usar una fuente de Processing y tener alguna animación (movimiento, fade, escalado, etc)
 3. La transición entre pantallas debe ser automática por tiempo.
 4. Al final debe haber un botón para reiniciar.
 5. Tener un botón al inicio para iniciar la presentación.
 
 Puntos Técnicos: Condicionales, AND / OR, Variables, Funciones propias, loadIamge(), loadFont(), mouseClicked, mousePressed,
 */

//Globales



void setup () {
  size (640, 480);

  inicio ();

  grupo1 = loadImage ("data/Grupo1.jpg");
  grupo2 = loadImage ("data/Grupo2.jpg");
  facu1 = loadImage ("data/Facu1.jpg");
  facu2 = loadImage ("data/Facu2.jpg");
  greg1 = loadImage ("data/Greg1.jpg");
  greg2 = loadImage ("data/Greg2.jpg");
  majo1 = loadImage ("data/Majo1.jpg");
  majo2 = loadImage ("data/Majo2.jpg");
  martin1 = loadImage ("data/Martin1.jpg");
  martin2 = loadImage ("data/Martin2.jpg");
  mateo1 = loadImage ("data/Mateo1.jpg");
  mateo2 = loadImage ("data/Mateo2.jpg");
}




void draw () {
  background (0);

  

  image (grupo1, en0, noY, siX, siY);

  if (noY < 0) {
    noY++;
  } else {
    image (grupo1, en0, en0, 640, 480);
  }


  /*image (facu1, 0, 0, 640/3, 480);
   image (facu2, 640-640/3, 0, 640/3, height);
   
   image (greg1, 0, 0, 640/3, 480);
   image (greg2, 640-640/3, 0, 640/3, height);
   
   image (majo1, 0, 0, 640/3, 480);
   image (majo2, 640-640/3, 0, 640/3, height);
   
   image (martin1, 0, 0, 640/3, 480);
   image (martin2, 640-640/3, 0, 640/3, height);
   
   image (mateo1, 0, 0, 640/3, 480);
   image (mateo2, 640-640/3, 0, 640/3, height);
   
   image (grupo2, 0, 0, 640, 480);
   */
}

/*
void draw () {
 background (255);
 
 }
 }
 */
