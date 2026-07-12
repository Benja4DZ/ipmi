PImage grupo1, grupo2, facu1, facu2, greg1, greg2, majo1, majo2, martin1, martin2, mateo1, mateo2;
PFont Titulo, PorDefecto, fuente2, FuenteFinal, boton;

//Tiempo
int NroPantalla;
int vel = 2;//+Velocidad
float conteo;//Los hice float porque es lo que admite map()
float opaco;

//Coordenadas
int Xen0, Yen0;
int noX = -640;
int siX = 640, siY = 480;
int noXimg = -(640/3), noYimg = -30;
int masYimg = 480+65+50;
int Ytext = 20;

//Botón
float bX = 640/2+15, bY = 480-480/9, bW = 100, bH = 50;
color rojo = color(255), blanco = color(0);
