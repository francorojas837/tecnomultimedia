void mostrarMenu() {
  // boton para iniciar la aventura
  image(imagenmenu, 0, 0);
  fill(237, 115, 117, 200);
  rect(width/2 - 100, height/2 - 100, 200, 100,120);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(24);
  text("Iniciar Aventura", width/2, height/2 - 50);
  
  // boton para ir a los créditos
  fill(0, 0, 200, 200);
  rect(width/2 - 100, height/2, 200, 100,120);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(24);
  text("Créditos", width/2, height/2 + 50);
}

void mostrarAventura() {
  // Mostrar imagen actual de la aventura
  image(imagenes[indiceImagen], 0, 0, width, height);
  fill(0, 0, 0, 80);
  rect(20, 20, 560, 180);
  
  // Cargar y mostrar el contenido del archivo de texto correspondiente
  String nombreArchivoTexto = archivosTexto[indiceImagen];
  String[] lineasTexto = loadStrings(nombreArchivoTexto);
  
  fill(255);
  textSize(18);
  textAlign(LEFT);
  
  for (int i = 0; i < lineasTexto.length; i++) {
    text(lineasTexto[i], 20, 30 + i * 30);
  }
  
  // Verificar si es la última imagen
  if (indiceImagen == numImagenes - 1) {
    //  boton para volver al menú
    fill(200, 0, 0);
    rect(width/2 - 100, height/2 + 100, 200, 100,150);
    textAlign(CENTER, CENTER);
    fill(255);
    textSize(24);
    text("Volver al Menú", width/2, height/2 + 150);
  }
  
  // botón para retroceder o volver al menú
  fill(255, 0, 0);
  rect(20, height - 80, 60, 60,120);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(24);
  text("<", 50, height - 50);
  
  // botón para avanzar en las pantallas
  fill(0, 255, 0);
  rect(width - 80, height - 80, 60, 60,120);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(24);
  text(">", width - 50, height - 50);
  
  // nuevo boton en la imagen 7
  if (indiceImagen == 7) {
    fill(0, 0, 200, 200);
    rect(width/2 - 100, height/2 - 100, 200, 100,150);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(24);
    text("El pez no lo deboró", width/2, height/2 - 50);
  }
  
  // nuevo boton en la imagen 9
  if (indiceImagen == 9) {
    fill(200, 0, 200, 200);
    rect(width/2 - 100, height/2 - 100, 200, 100,150);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(18);
    text("El viento no los enpujó", width/2, height/2 - 50);
  }
}

void mostrarAventuraAlterna1() {
  // Mostrar imagen actual de la primera aventura alterna
  image(imagenesAlterna1[indiceImagenAlterna1], 0, 0, width, height);
  fill(0, 0, 0, 80);
  rect(20, 20, 560, 180);
  String nombreArchivoTextoB1 = "textob1.txt";
  String nombreArchivoTextoB2 = "textob2.txt";
  PImage[] imagenesAlterna1 = new PImage[2];
  
  // Cargar texto para imagenb1
  String[] lineasTextoB1 = loadStrings(nombreArchivoTextoB1);
  imagenesAlterna1[0] = loadImage("imagenb1.png");

  // Cargar texto para imagenb2
  String[] lineasTextoB2 = loadStrings(nombreArchivoTextoB2);
  imagenesAlterna1[1] = loadImage("imagenb2.png");

  // Mostrar contenido del texto correspondiente
  String[] lineasTexto = (indiceImagenAlterna1 == 0) ? lineasTextoB1 : lineasTextoB2;

  fill(255);
  textSize(18);
  textAlign(LEFT);
  
  for (int i = 0; i < lineasTexto.length; i++) {
    text(lineasTexto[i], 20, 30 + i * 30);
  }

  // botón para avanzar en las pantallas de la primera aventura alterna
  fill(0, 255, 0);
  rect(width - 80, height - 80, 60, 60, 120);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(24);
  text(">", width - 50, height - 50);

  // nuevo botón para volver al menú de mostrarAventura
  if (indiceImagenAlterna1 == 1) {
    fill(255, 0, 0);
    rect(20, height - 80, 60, 60, 120);
    textAlign(CENTER, CENTER);
    fill(255);
    textSize(24);
    text("<", 50, height - 50);
  }
}

void mostrarAventuraAlterna2() {
  // mostrar imagen de la segunda aventura alterna
  image(imagenesAlterna2[indiceImagenAlterna2], 0, 0, width, height);
 fill(0, 0, 0, 80);
  rect(20, 20, 560, 180);
  // Mostrar contenido del texto correspondiente
  String[] lineasTexto = lineasTextoC;

  fill(255);
  textSize(14);
  textAlign(LEFT);

  for (int i = 0; i < lineasTexto.length; i++) {
    text(lineasTexto[i], 20, 30 + i * 20);
  }

  // boton para retroceder en las pantallas de la segunda aventura alterna
  fill(255, 0, 0);
  rect(20, height - 80, 60, 60, 120);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(24);
  text("<", 50, height - 50);

  // Nuevo botón para volver a la imagen "imagenc"
  if (indiceImagenAlterna2 == 1) {
    fill(200, 0, 0);
    rect(width / 2 - 100, height / 2 + 100, 200, 100);
    
}
}
void mostrarFinal() {
  // Mostrar pantalla final
  background(0);
  
  // Mostrar botón para volver al menú
}

void mostrarCreditos() {
  // Mostrar imagen de los créditos
  image(imagencreditos, 0, 0, width, height);
  
  fill(0);
  text("Rojas Mamani Franco: 94755/4", 160, 50);
  textSize(16);
  text("imagenes: https://www.youtube.com/watch?v=t91D-OvQwaM \n https://www.aprenderjuntos.cl/el-soldadito-de-plomo/ \n http://elcirculodeartesanos.blogspot.com/2009/05/el-soldadito-de-plomo.html \n https://playgroundai.com", 300, 120);
  
  // Mostrar botón para volver al menú
  fill(200, 0, 0);
  rect(width/2 - 100, height/2 + 100, 200, 100,120);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(24);
  text("Volver al Menú", width/2, height/2 + 150);
}
