int tiempoTranscurrido = 0; // Variable para contar el tiempo 
int tiempoCambioImagen = 360; // 60 frames x 6 segundos 
int imagenActual = 0; 
int index = 0;
int duration = 6 * 60; // 6 segundos en frames a 60 FPS
int startTime = 0;


PImage[] imagenes = new PImage[5]; // Almacenar las 4 imágenes
String[] textos = {"El nuevo crucero más grande del mundo es el \n Wonder of the Seas,  una impresionante embarcación que ha \n sido construida con un coste de 1.200 millones de euros. "
, "Destaca por su tamaño, con 362 metros de eslora, 64 metros \n de manga  y un casco ancho diseñado especialmente para \n garantizar su estabilidad con solo 9,15 metros de calado."
, "Este barco es la última obra maestra de la \n compañía Royal Caribbean,  que apuesta por tener los cruceros \n más grandes del mundo para destacar en la competencia. "
, "La construcción comenzó en 2019 y \n tenía una fecha de  entrega inicial para 2021, pero debido a la \n  pandemia de COVID-19, el proyecto se retrasó varios meses hasta 2022."}; // Arreglo para almacenar los textos de cada imagen
int[] posicionesX = {0, 0, 0, 0};
int[] posicionesY = {35, 35, 300, height};
int[] velocidadesX = {1, 0, 0, 1};
int[] velocidadesY = {0, 1, -1, 0};


 
  
void setup() {
  size(640, 480);
  
  // Carga las cuatro imágenes
  imagenes[0] = loadImage("imagena.jpeg");
  imagenes[1] = loadImage("imagenb.png");
  imagenes[2] = loadImage("imagenc.jpeg");
  imagenes[3] = loadImage("imagend.jpeg");
  imagenes[4] = loadImage("botonazul.png");
  
}
void mousePressed() {
  // botón
  if (mouseX >= 0 && mouseX <= imagenes[4].width && mouseY >= 0 && mouseY <= imagenes[4].height) {
    // Reinicia todas las variables a sus valores iniciales
    tiempoTranscurrido = 0;
    imagenActual = 0;
    index = 0;
    startTime = 0;
    for (int i = 0; i < posicionesX.length; i++) {
      posicionesX[i] = 0;
      posicionesY[i] = i < 2 ? 35 : height;
    }
  }
}
// Rectángulo invisible 
int botonX = 0;
int botonY = 0;
int botonWidth = 0;
int botonHeight = 0;

void draw() {
  
  image(imagenes[imagenActual], 0, 0, width, height);
  
 
  
  textSize(18);
  fill(255);
  
    // Verificar si es tiempo de cambiar de texto
  if (frameCount >= startTime + duration) {
    index = (index + 1) % textos.length;
    startTime = frameCount;
  }
  if (imagenActual == imagenes.length - 1) {
  return;
}



  



  fill(255);
  text(textos[index], posicionesX[index], posicionesY[index]);
  
  posicionesX[index] += velocidadesX[index];
  posicionesY[index] += velocidadesY[index];
  
  // si el texto está fuera de la pantalla
  if (posicionesX[index] > width || posicionesX[index] < -textWidth(textos[index]) ||
      posicionesY[index] > height || posicionesY[index] < -textAscent()) {
    // Reiniciar la posición del texto actual
    posicionesX[index] = 0;
    posicionesY[index] = 0;
  }
  
 
  tiempoTranscurrido++;
  
  
  
  if (tiempoTranscurrido >= tiempoCambioImagen) {
  
    // Si es la última imagen, detener la animación
    if (imagenActual == 4) {
      return;
    }
    
    // Cambia a la siguiente imagen
    imagenActual++;
    
    // Reinicia la variable de tiempo transcurrido
    tiempoTranscurrido = 0;
 
  
     }
  }
  
 
  
  
  
