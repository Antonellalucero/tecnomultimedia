void cuadraditos(){
 for(int i=0;i<8;i++){
   rotate (radians(10));
    rectMode(CENTER);
    float tam=map(i,0,8,330,0);
    fill(i%2*255);
 
    rect(0,0,tam,tam);
angle +=girar;

 if(mouseX<400){
   translate(800,200);
  
    fill(i%2*200);
    rect(0,0,tam,tam);
  }
 
 if (mouseY<100){
    translate(800,200);
  
    fill(i%2*200);
    rect(0,0,tam,tam);
 }

}
}
