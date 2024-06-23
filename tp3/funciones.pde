
void ciclofor(float horizontal, float vertical) {
  // rectangulos horizontales
  for (int RectHorizontal = 10; RectHorizontal<200; RectHorizontal+=horizontal) {
    line(400, RectHorizontal, 600, RectHorizontal);

    float y = map(RectHorizontal, 10, 200, 210, 400);
    line(600, y, 800, y);
    // limitar zona cuadro vertical 1 y 2
    boolean cuadroV1 =  mouseX > 600 && mouseX < 800 && mouseY > 0 && mouseY < 200 && distEllipse() > 120 ;
    boolean cuadroV2 =  mouseX > 400 && mouseX < 600 && mouseY > 200 && mouseY < 400 && distEllipse() > 120 ;
    //efecto lineas en el cuadro vertical 1 y 2
    if (mousePressed == true && mouseButton == RIGHT && cuadroV1==true) {
      line(600,RectHorizontal,800,RectHorizontal);
    }
    if (mousePressed == true && mouseButton == RIGHT && cuadroV2==true) {
      line(400, RectHorizontal+200, 600,RectHorizontal+200 );
    }
    // efecto "persiana negra"
    if ((keyPressed == true) &&  (key =='a')) {
      RectHorizontal = RectHorizontal - 18;
    }

    // rectangulos verticales
    for (int RectVertical = 410; RectVertical<600; RectVertical+=vertical) {
      line(RectVertical, 200, RectVertical, 400);
      float x = map(RectVertical, 410, 600, 610, 800);
      line(x, 0, x, 200);


      // limitar zona cuadro horizontal 1 y 2
      boolean cuadroH1 =  mouseX > 400 && mouseX < 600 && mouseY > 0 && mouseY < 200 && distEllipse() > 120 ;
      boolean cuadroH2 =  mouseX > 600 && mouseX < 800 && mouseY > 200 && mouseY < 400  && distEllipse() > 120;

      //efecto lineas en el cuadro horizontal 1 y 2
      if (mousePressed == true && mouseButton == RIGHT && cuadroH1==true) {
        line(RectVertical, 10, RectVertical, 200);
      }
      if (mousePressed == true && mouseButton == RIGHT && cuadroH2==true) {
        line(RectVertical+200, 200, RectVertical+200, 400);
      }
      // efecto "persiana negra"
      if ((keyPressed == true) &&  (key =='s')) {
        RectVertical = RectVertical - 18;
      }
    }
  }
}

void cicloforEllipse() {
  for (int ellipse =220; ellipse>40; ellipse-=80) {
    ellipse(600, 200, ellipse, ellipse);
  }
}

float distEllipse() {
  float d = dist(mouseX, mouseY, 600, 200);//600,200 = x, y de la ellipse
  println(d);
  return d;
}

boolean encapsularRectangulo1() {
  boolean rectIzq = mouseX > 400 && mouseX< 600 && mouseY > 0 && mouseY < 400;
  return rectIzq;
}

boolean encapsularRectangulo2() {
  boolean rectDer = mouseX > 600 && mouseX < 800 && mouseY >0 && mouseY < 400;
  return rectDer;
}


void rectangulos() {
  if (mousePressed == true  && mouseButton == LEFT && encapsularRectangulo1() == true) {

    float alto = dist(mouseY, 10, mouseY, mouseY); // efecto persiana blanca izquierda
    rect(410, 10, 180, alto);
  }
  if (mousePressed == true && mouseButton == LEFT && encapsularRectangulo2() == true) {
    float alto2 = dist(mouseY, 10, mouseY, mouseY); // efecto persiana blanca derecha
    rect(609, 9, 181, alto2);
    println(alto2);
  }
}
