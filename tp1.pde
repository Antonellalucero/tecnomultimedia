PImage Imagen1, Imagen2, Imagen3, Boton;
int pantalla = 1;
int segundos = 0;
int contador =0;
PFont Fuente1, Fuente2, Fuente3;
float EfectoAumento;
int EfectoMovimiento;
float EfectoTransparencia;

void setup() {
  size(640, 480);

  Imagen1 = loadImage("imagen1.jpg");
  Imagen2 = loadImage("imagen2.jpg");
  Imagen3 = loadImage("imagen3.jpg");
  Boton = loadImage("boton.jpg");

  Fuente1 = loadFont("BellMT-25.vlw");
  Fuente2 = loadFont("BellMT-25.vlw");
  Fuente3 = loadFont("BellMT-25.vlw");

  EfectoAumento = 38;
  EfectoMovimiento = 530;
  EfectoTransparencia = 1;
}

void draw() {
  background(0);
  if (frameCount % 60 == 0) {
    segundos = segundos + 1;
  }

  if (segundos <= 6) {
    image(Imagen3, 0, 0, 640, 480);
contador++;
    println("estado 0",contador);
    if (contador>=4) {
      contador=0;
      pantalla =1;
    }
    textFont(Fuente1, EfectoAumento);
    textAlign(CENTER, CENTER);
    fill(#FFFFFF);
    text("Un destornillador es una herramienta que se utiliza\n para apretar y aflojar tornillos\n y otros elementos de máquinas \n que requieren poca fuerza de apriete\n y que generalmente son de diámetro pequeño.", (width/2), (height/2));

    EfectoAumento = EfectoAumento - 0.05;
   } else if (segundos <= 20) {
  pantalla = 2;
     image(Imagen2, 0, 0, 640, 480);

    textFont(Fuente2, 25);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Los destornilladores documentados más antiguos\n fueron utilizados en Europa, en la Edad Media tardía.\n Probablemente fueron inventados en el siglo xv, en Alemania\n o Francia. Los nombres originales\n de la herramienta en alemán y francés\n fueron schraubendreher y tournevis, respectivamente", (width/2), EfectoMovimiento);

    EfectoMovimiento = EfectoMovimiento - 1;
 
} else if (segundos > 2) {
    pantalla = 3;
    image(Imagen1, 0, 0, 640, 480);

    fill(#E1DEF7, EfectoTransparencia);
    textFont(Fuente3, 25);
    textAlign(CENTER, CENTER);
    text("En El Salvador, Honduras, Nicaragua, México y Guatemala \ntambién se conoce a esta herramienta como desarmador. \nTambién es válido el término desatornillador,\n aunque es un término menos frecuente y con más uso en el \ncontinente americano", (width/2), (height/2));

    EfectoTransparencia = EfectoTransparencia + 3.5;

    image(Boton, 530, 420, 100, 40);
  }
}

void mousePressed() {

  if (segundos > 4 && pantalla == 3 && mouseX > 530 && mouseX < 628 && mouseY > 420 && mouseY < 460) {
    segundos = 0;
    pantalla = 1;
    EfectoAumento = 38;
    EfectoMovimiento = 530;
    EfectoTransparencia = 1;
  }
}
