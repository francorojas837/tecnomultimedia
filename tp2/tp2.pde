PImage imagen;
int cant = 10;
color colorAleatorio;

void setup() {
  size(800, 400);
  rectMode(CORNER);
  imagen = loadImage("arteoptico.png");
  
  ellipseMode(RADIUS);
  
  colorAleatorio = color(255); 
}

void draw() {
  background(0);
  blendMode(DIFFERENCE);
  
  int tam = 40;
  int alto = height / cant / 2;

  float movimiento = map(mouseY, 0, height, -50, 50);

  for (int i = 0; i < cant; i++) {
     if (i%2==0) {
      fill(0);
    } else {
      fill(255);
    }
    float rectY = i * tam + movimiento;
    int fillColor = (i % 2 == 0) ? 0 : colorAleatorio;
    fill(fillColor);
    rect(400, rectY, width, tam);
    ellipse(600, 200, i * alto + 11, i * alto + 10);
  }

  image(imagen, 0, 0);
}

void mouseClicked() {  
  cambiarColorAleatorio();
}

void keyPressed() {
  if (key == 'r') {
    cant = aumentarCant(cant);
  }
}

void cambiarColorAleatorio() {
  colorAleatorio = color(random(255), random(255), random(255));
}

int aumentarCant(int valor) {
  return valor + 1;
}
