void Cargas() {
  grupo1  = loadImage ("data/Grupo1.jpg");
  grupo2  = loadImage ("data/Grupo2.jpg");
  facu1   = loadImage ("data/Facu1.jpg");
  facu2   = loadImage ("data/Facu2.jpg");
  greg1   = loadImage ("data/Greg1.jpg");
  greg2   = loadImage ("data/Greg2.png");
  majo1   = loadImage ("data/Majo1.jpg");
  majo2   = loadImage ("data/Majo2.jpg");
  martin1 = loadImage ("data/Martin1.jpg");
  martin2 = loadImage ("data/Martin2.jpg");
  mateo1  = loadImage ("data/Mateo1.jpg");
  mateo2  = loadImage ("data/Mateo2.jpg");

  PorDefecto  = loadFont ("ArialRoundedMTBold-30.vlw");
  Titulo      = loadFont ("EdwardianScriptITC-50.vlw");
  fuente2     = loadFont ("BookmanOldStyle-BoldItalic-30.vlw");
  FuenteFinal = loadFont ("BritannicBold-30.vlw");
  boton       = loadFont ("MicrosoftSansSerif-18.vlw");
}

//BOTÓN DE REINICIO
void mousePressed() {
  if (NroPantalla==6 && conteo>60*13.2 && mouseX>bX-bW/2 && mouseY>bY-bH/2 && mouseX<bX+bW/2 && mouseY<bY+bH/2) {
    Reinicio();
  }
}

void Reinicio() {
  NroPantalla = 0 /*-1*/; //Cambiar a = -1 para poder visualizar el Reinicio Alternativo
  conteo      = 0;
  opaco       = 0;
  masYimg = 480+65+50;
  noXimg  = -(640/3);
  noYimg  = -30;
  Ytext   = 20;
  noX     = -640;
  siX     = 640;
  siY     = 480;
  Xen0    = 0;
  Yen0    = 0;
}

void ReinicioAlternativo() { //Originalmente reiniciaría de esta forma pero no sabía si contaba como un reinicio como tal, así que lo dejo como una opción alternativa.
  if (NroPantalla == -1) {
    Inicio();
    image (grupo1, noX, Yen0, width, height);
    image (grupo2, Xen0, 0, width, height);

    textAlign(CENTER);
    textFont(FuenteFinal);
    textSize(28);
    fill(255);
    text("¡Seguilos en YouTube e Instagram: @gonzaleztoda!", width/2, Ytext);

    if (noX < 0) {
      noX += vel;
      Xen0 += vel;
      Ytext -= conteo;
    }
    if (noX >= 0) {
      textAlign(CENTER, CENTER);
      textFont(Titulo);
      textSize(50);
      fill(200, 0, 0);
      text("González Toda", width/2, noYimg);
      textAlign(CENTER);
      textFont(fuente2);
      textSize(30);
      fill(255);
      text("González Toda es una banda pop/funk\nfundada en 2024 y compuesta por\n5 integrantes platenses.", width/2, Yen0+height+50);
    }
    if (conteo > 60*5.5 && noYimg < 25) {
      noYimg++;
    }
    if (conteo>60*10) {
      Yen0 -= 1.8;
      noYimg -= vel;
    }
    if (conteo > 60*20.4) {
      conteo = 0;
      NroPantalla = 1;
    }
  }
}

//ANIMACIONES
void TextoIntegrantes() {
  textAlign(CENTER, CENTER);
  textFont(PorDefecto);
  textSize(19);
  fill(opaco);
}

void AnimaciónIntegrantes() {
  if (NroPantalla>0 && NroPantalla<6) {
    if (conteo==0) {
      conteo++;
    }
    if (opaco > 260) {
      opaco = 255;
    }
    if (noXimg < -1 && conteo<60*4) {
      opaco = map(conteo, 0, 100, 0, 255);//100 son los frames que tardan las imágenes en aparecer.
      noXimg += vel;
      siX -= vel;
      opaco++;
    }
    if (conteo>60*10) {
      opaco -= vel+0.5;//+0.5 para que el texto desaparezca un poco antes de que inicie la próx. pantalla.
      noXimg -= vel;
      siX += vel;
    }
  }
}

//TODAS LAS PANTALLAS
void Inicio() {
  if (NroPantalla == 0) {
    image (grupo1, noX, Yen0, width, height);
    if (noX < 0) {
      noX += vel;
    }
    if (noX >= 0) {
      textAlign(CENTER, CENTER);
      textFont(Titulo);
      textSize(50);
      fill(200, 0, 0);
      text("González Toda", width/2, noYimg);
      textAlign(CENTER);
      textFont(fuente2);
      textSize(30);
      fill(255);
      text("González Toda es una banda pop/funk\nfundada en 2024 y compuesta por\n5 integrantes platenses.", width/2, Yen0+height+50);
    }
    if (conteo > 60*5.5 && noYimg < 25) {
      noYimg++;
    }
    if (conteo>60*10) {
      Yen0 -= 1.8;
      noYimg -= vel;
    }
    if (conteo > 60*20.4) {//Reinicio el contador para una mejor organización.
      conteo = 0;
      NroPantalla = 1;
    }
  }
}

void Pantalla1() {
  if (NroPantalla == 1) {
    image (majo1, noXimg, 0, 640/3, height);
    image (majo2, siX, 0, 640/3, height);
    text("\n\nMaría José González\n( 28 años )\n\n• • • • • • • • • • • • • • • •\n\nVocalista\n\n• • • • • • • • • • • • • • • •\n\nProfesora de canto\ny estudiante de\nla carrera de\nFonoaudiología", width/2, height/2);
    if (noXimg < -213) {
      conteo = 0;
      NroPantalla = 2;
    }
  }
}

void Pantalla2() {
  if (NroPantalla == 2) {
    image (martin1, noXimg, 0, 640/3, height);
    image (martin2, siX, 0, 640/3, height);
    text("\n\nMartín Hugo Lavernhe\n( 44 años )\n\n• • • • • • • • • • • • • • • •\n\nGuitarrista\n\n• • • • • • • • • • • • • • • •\n\nProfesor de varios\ninstrumentos con\n una escuela de\nmúsica propia", width/2, height/2);
    if (noXimg < -215) {
      conteo = 0;
      NroPantalla = 3;
    }
  }
}

void Pantalla3() {
  if (NroPantalla == 3) {
    image (mateo1, noXimg, 0, 640/3, height);
    image (mateo2, siX, 0, 640/3, height);
    text("\nMateo Loreto\n( 22 años )\n\n• • • • • • • • • • • • • • • •\n\nBajista\n\n• • • • • • • • • • • • • • • •\n\nLicenciado en\nAbogacía de\nla UNLP", width/2, height/2);
    if (noXimg < -217) {
      conteo = 0;
      NroPantalla = 4;
    }
  }
}

void Pantalla4() {
  if (NroPantalla == 4) {
    image (facu1, noXimg, 0, 640/3, height);
    image (facu2, siX, 0, 640/3, height);
    text("\n\nFacundo Bellone\n( 26 años )\n\n• • • • • • • • • • • • • • • •\n\nPianista\n\n• • • • • • • • • • • • • • • •\n\nEstudiante del\nConservatorio\nde Música\nGilardo Gilardi", width/2, height/2);
    if (noXimg < -219) {
      conteo = 0;
      NroPantalla = 5;
    }
  }
}

void Pantalla5() {
  if (NroPantalla == 5) {
    image (greg1, noXimg, 0, 640/3, height);
    image (greg2, siX, 0, 640/3, height);
    text("\nGregorio Maclen\n( 24 años )\n\n• • • • • • • • • • • • • • • •\n\nBaterista\n\n• • • • • • • • • • • • • • • •\n\nEstudiante\nen Sistemas\n", width/2, height/2);
    if (noXimg < -221) {
      conteo = 0;
      NroPantalla = 6;

      Xen0 = 0;
      siY = 480;
      masYimg = 480+65+50;
    }
  }
}

void Final() {
  if (NroPantalla == 6) {
    image (grupo2, Xen0, masYimg, width, height);
    textAlign(CENTER);
    textFont(fuente2);
    textSize(27);
    fill(255);
    text("Actualmente se encuentran en\nproceso de grabación de su primer álbum.", width/2, siY+17);
    textFont(FuenteFinal);
    textSize(28);
    text("¡Seguilos en YouTube e Instagram: @gonzaleztoda!", width/2, siY+88);
    if (siY > -65) {
      siY--;
    }
    if (masYimg > 0) {
      masYimg--;
    }
    if (conteo>60*13) {
      rectMode(CENTER);
      strokeWeight(3);
      fill(rojo);
      rect(bX, bY, bW, bH);

      textAlign(CENTER, CENTER);
      textFont(boton);
      textSize(18);
      fill(blanco);
      text("REINICIAR", width/2+15, height-height/9);

      if (mouseX>bX-bW/2 && mouseY>bY-bH/2 && mouseX<bX+bW/2 && mouseY<bY+bH/2) {
        rojo   = color(200, 0, 0);
        blanco = 255;
      } else {
        rojo   = color(255);
        blanco = 0;
      }
    }
  }
}
