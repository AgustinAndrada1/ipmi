//AGUSTÍN IGNACIO ANDRADA
//LEGAJO: 85192/9
// https://youtu.be/_t1a42ozG1w
PImage imagen;
void setup() {
  size(800, 400);
  imagen = loadImage("F_25.jpg");  
}

void draw() {
  background(255);
  println(mouseX, mouseY);
  strokeWeight(20);
  strokeCap(SQUARE);
  image(imagen, 0, 0);
  ciclofor(40, 40);
  rectangulos();
  cicloforEllipse(); 



}

void keyPressed() {
float red = random(0,255);
  float green  = random(0,255);
  float blue = random(0,255);
  if ( (key=='v') && distEllipse() <120) {  //120 = limite de la ellipse
    fill(red,green,blue,100); 
  }
  else if ( (key=='c') && distEllipse() <120) {  
    fill(red,green,blue,255);  
  } else {
    fill(255);
  }
}

  
  
