// https://youtu.be/MHTx8PA7jpY



int estado = 0; // estado de la pantalla
int numImagenes = 12;
int indiceImagen = 0;
int estadoAventuraAlterna1 = 0; // estado de la primera aventura alterna
int indiceImagenAlterna1 = 0;
int estadoAventuraAlterna2 = 0; // estado de la segunda aventura alterna
int indiceImagenAlterna2 = 0;
PImage[] imagenes = new PImage[numImagenes]; // arreglo para almacenar las imágenes
PImage imagencreditos; // imagen de los créditos y del menu
PImage imagenmenu;
PImage[] imagenesAlterna1 = new PImage[2]; // arreglo para almacenar las imágenes de la primera aventura alterna
String nombreArchivoTextoC = "textoc.txt";

PImage[] imagenesAlterna2 = new PImage[2]; // arreglo para almacenar las imágenes de la segunda aventura alterna
PImage imagenc; // imagen de la segunda aventura alterna
String[] archivosTexto = new String[numImagenes];
String[] lineasTextoC;

void setup() {
  size(600, 600);

  // imágenes de la aventura
  for (int i = 0; i < numImagenes; i++) {
    imagenes[i] = loadImage("imagen" + i + ".png");
  }

  // archivos de texto
  for (int i = 0; i < numImagenes; i++) {
    archivosTexto[i] = "texto" + (i + 1) + ".txt";
  }

  // menu y creditos
  imagencreditos = loadImage("creditos.png");
  imagenmenu = loadImage("menu.png");

  // Cargar imágenes de la primera aventura alterna
  imagenesAlterna1[0] = loadImage("imagena.png");
  imagenesAlterna1[1] = loadImage("imagenb.png");



  // texto de la imagen alterna c
  lineasTextoC = loadStrings(nombreArchivoTextoC);
  imagenesAlterna2[0] = loadImage("imagenc.png");
}

void draw() {
  background(255);

  if (estado == 0) {
    // Mostrar menú
    mostrarMenu();
  } else if (estado == 1) {
    // mostrar aventura
    if (estadoAventuraAlterna1 == 0 && estadoAventuraAlterna2 == 0) {
      mostrarAventura();
    } else if (estadoAventuraAlterna1 == 1) {
      mostrarAventuraAlterna1();
    } else if (estadoAventuraAlterna2 == 1) {
      mostrarAventuraAlterna2();
    }
  } else if (estado == 2) {

    mostrarFinal();
  } else if (estado == 3) {

    mostrarCreditos();
  }
}
