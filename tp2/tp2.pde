PImage ludo1, ludo2, ludo3, boton;        
PFont fuente;
String texto1 = "El ludo es un juego de 2 a 4 personas, hay \n diferentes versiones como el ludo matic, \n el royal ludo, o su variante de pc Ludo Hero.\n Se utiliza un tablero con 4 zonas para los 4 \n jugadores, con 4 peones/fichas por jugador \n y 1 o 2 dados según su formato.";
String texto2 = "Las reglas del ludo varían un poco segun su \n versión, pero todas comparten lo mismo:\ncada jugador tiene una zona inicial, una recta \n final y una casa final. El objetivo será que el \n peón llegue a la casa final pasando por todo \n el tablero sin que lo eliminen.  ";
String texto3 = "El juego termina cuando un jugador lleva \n las 4 piezas a su área final";
int estado;
int esquinaX1 = 250; 
int esquinaY1 = 188;
int ancho = 136;
int alto = 100;

void setup(){
size(640,480);
background(0,0,0);
ludo1 = loadImage("ludopantalla1.jpg"); 
ludo2 = loadImage("ludopantalla2.jpg");
ludo3 = loadImage("ludopantalla3.png");
boton = loadImage("boton-reinicio.jpg");
fuente = loadFont("Arial-BoldItalicMT-48.vlw");
textFont(fuente);
textSize(25);
estado = 10;

}

void draw() {
  println(estado);
  println(mouseX,mouseY);
  
 //Estado 1
 
 if (estado < 800) { 
 estado +=1;
 tint(180);
 image(ludo1,0,0);
 text(texto1,50,height-frameCount/1.2); 
}
//Estado 2

 else {
 estado +=1;
 tint(180);
 image(ludo2,0,0);
 text(texto2,50,height+600-frameCount/1.2);
 }
 
 //Estado 3 
 if (estado > 1550) {
 estado +=1;
 tint(180);
 image(ludo3,0,0);
 text(texto3,50,height+1000-frameCount/1.2);
 }
 
 //Estado 4
 if (estado > 2100) {
 tint(180);
 image(ludo3,0,0);
 image(boton,esquinaX1,esquinaY1);
 
 }
 
 
}

void mousePressed() {
if ( estado < 2000){
}
  
  else if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
   println("se presiono el rectangulo");
   estado = 0; 
  frameCount = 0;
  
}
}
