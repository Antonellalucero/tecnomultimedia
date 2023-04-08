PImage destornillador;

void setup(){
background(#2AC5F2);
  size(800,400);
destornillador = loadImage("destornillador.jpg");
image(destornillador,0,0,400,400);


smooth();

}
 void draw() {
 
   println(mouseX,mouseY);
 strokeWeight(5); 
  fill(#FBFF2C);
  rect(520,200,50,199);
  curve(600,2000,522,450,520,200,350,10);
  //no me salia esta curva :c
  curve(20,1000,568,1000,570,200,799,200);

 
   
   fill(#BCBCB6);
line(544,399,544,250);
rect(540,90,10,110);
 
 triangle(545,100,570,90,520,90);

 }
