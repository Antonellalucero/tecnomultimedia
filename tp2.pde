//no es un trabajo del que me alegro pero lo intente, no supe hacer que cada cuadrado girase independientemente, por lo que tuve que hacer que girase todo junto 
//por lo demas creo ese fue mi unico inconveniente
//pd:soy principiante, riase si quiere jajsjas.

//Lucero Antonella legajo:92829/6
//


PImage img; 
int limite = 4;
float girar = 0.0;


float angle=0.0;
void setup(){
  size(800,400);
  img=loadImage("optica1.jpg");
}
void draw(){
 background(255);
 image(img,10,0,390,390); 
strokeWeight(0.5);

translate(600,200);

 rotate(angle);
 cuadraditos();
}
void mouseClicked(){
    limite += 1;
  girar +=0.2;

}
void keyPressed(){
  if(key == 'r'){
   limite = 4;
   girar =0.0;
  }
}
