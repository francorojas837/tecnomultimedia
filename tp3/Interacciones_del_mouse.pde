void mousePressed() {
  if (estado == 0) {
    //botón de iniciar la aventura
    if (mouseX >= width/2 - 100 && mouseX <= width/2 + 100 && mouseY >= height/2 - 100 && mouseY <= height/2) {
      estado = 1; // Cambiar al estado de aventura
    }
    // boton de créditos
    else if (mouseX >= width/2 - 100 && mouseX <= width/2 + 100 && mouseY >= height/2 && mouseY <= height/2 + 100) {
      estado = 3; // Cambiar al estado de créditos
    }
  } else if (estado == 1) {
    //  "B" en la imagen 7
    if (indiceImagen == 7 && mouseX >= width/2 - 100 && mouseX <= width/2 + 100 && mouseY >= height/2 - 100 && mouseY <= height/2) {
      // Iniciar la primera aventura alterna
      estadoAventuraAlterna1 = 1;
      indiceImagenAlterna1 = 0;
    }
    // boton "C" en la imagen 9
    else if (indiceImagen == 9 && mouseX >= width/2 - 100 && mouseX <= width/2 + 100 && mouseY >= height/2 - 100 && mouseY <= height/2) {
      // Iniciar la segunda aventura alterna
      estadoAventuraAlterna2 = 1;
      indiceImagenAlterna2 = 0;
    } else if (indiceImagen == numImagenes - 1 && mouseX >= width/2 - 100 && mouseX <= width/2 + 100 && mouseY >= height/2 + 100 && mouseY <= height/2 + 200) {
      estado = 0;
      indiceImagen = 0;
      estadoAventuraAlterna1 = 0;
      indiceImagenAlterna1 = 0;
      estadoAventuraAlterna2 = 0;
    } else if (mouseX >= 20 && mouseX <= 80 && mouseY >= height - 80 && mouseY <= height - 20) {
      // Retroceder en las pantallas
      if (indiceImagen > 0) {
        indiceImagen--;
        if (estadoAventuraAlterna1 == 1 && indiceImagen < 7) {
          // salir de la primera aventura alterna
          estadoAventuraAlterna1 = 0;
          indiceImagenAlterna1 = 0;
        }
        if (estadoAventuraAlterna2 == 1 && indiceImagen < 9) {
          // salir de la segunda aventura alterna
          estadoAventuraAlterna2 = 0;
          indiceImagenAlterna2 = 0;
        }
      } else {
        estado = 0; // cambiar al estado de menú
        estadoAventuraAlterna1 = 0;
        indiceImagenAlterna1 = 0;
        estadoAventuraAlterna2 = 0;
      }
    } else if (mouseX >= width - 80 && mouseX <= width - 20 && mouseY >= height - 80 && mouseY <= height - 20) {
      // Avanzar en las pantallas
      if (estadoAventuraAlterna1 == 0 && estadoAventuraAlterna2 == 0) {
        if (indiceImagen < numImagenes - 1) {
          indiceImagen++;
        }
      } else if (estadoAventuraAlterna1 == 1) {
        if (indiceImagenAlterna1 < imagenesAlterna1.length - 1) {
          indiceImagenAlterna1++;
        }
      } else if (estadoAventuraAlterna2 == 1) {
        if (indiceImagenAlterna2 < imagenesAlterna2.length - 1) {
          indiceImagenAlterna2++;
        }
      }
    }
  } else if (estado == 2 || estado == 3) {
    // botón de volver al menú
    if (mouseX >= width/2 - 100 && mouseX <= width/2 + 100 && mouseY >= height/2 + 100 && mouseY <= height/2 + 200) {
      estado = 0; // Cambiar al estado de menú
      indiceImagen = 0;
      estadoAventuraAlterna1 = 0;
      indiceImagenAlterna1 = 0;
      estadoAventuraAlterna2 = 0;
    }
  }
}
