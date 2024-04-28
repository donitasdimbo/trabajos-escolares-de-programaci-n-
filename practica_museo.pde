PImage imagen;      //asigancion de la variable de la imagen
int posIAX = 1400;  // posición inicial en X
int posY = 200;     // posición en Y (se mantiene constante)
int posFBX = 1600;  // posición final en X
float posX;         // posición en X actual (será actualizada durante la animación)
float velocidad = 1;// velocidad de movimiento


void setup() {
  fullScreen();
  size(600, 600);    // tamaño de la ventana
  posX = posIAX; // spawnea el circulo en la posicion inicial
}

void draw() {
   background(130,80,130);
   
  imagen= loadImage("../assets/lerma_img.jpeg");
  image(imagen, width/25, height/6);
  
  // mueve el círculo y el texto de la posición inicial a la final
  if (posX < posFBX) {
    posX += velocidad; // hace que el circulo se mueva 
  }
  
 //caracteristicas del circulo 
  fill(178, 218, 250); //asigna el color del circulo
  noStroke(); // ayuda a que no tenga borde si quieren qu etenga el borde pueden eliminarlo 
  ellipse(posX, posY, 500, 300); // en lugar en donde spawnea el circulo y desde donde se movera 
  
  // datos del texto del circulo (totalmente editable)
  fill(255,106,122); // asigna el color del texto 
  textSize(75); // tamaño de la letra 
  textAlign(CENTER); // para que este alineado en el centro del circulo 
  text("VIDA URBANA", posX, posY + 10); // texto centrado en la posición actual del círculo
  
  //datos de la exposicion 
  fill(255); // asigna el color del texto 
  textSize(55); // tamaño de la letra 
  text("LA COTIDIANIDAD", 1450,600 );
  fill(170, 230, 90);
  textSize(25);
  text("Por Alexandra Villa Nueva", 1300,900); // texto centrado en la posición actual del círculo
  text("Desde el 10 al 29 de septiembre del año en curso", 1420, 950);
}
