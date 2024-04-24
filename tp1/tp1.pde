PImage Paisaje2; 
void setup() {
size (800,400);
background(114,189,250);
Paisaje2 = loadImage("Paisaje2.jpg");

}

void draw() {

smooth();
stroke(250,200,0);
fill(250,200,0);
ellipse(0,0,40,40);


fill(37,81,206);
stroke(220);
strokeWeight(3 );
triangle(30,180,370,103,620,180);
triangle(0,180,191,112,331,180);


stroke(76,127,252);
fill(76,127,252);
rect(0,230,800,100);

stroke(81,133,250);
fill(81,133,250);
rect(0,280,800,80);

fill(31,142,26);
rect(0,360,1700,200);

stroke(103,61,16);
fill(103,61,16);
rectMode(CENTER);
rect (5,250,35,200);
stroke(37,191,53);
fill(37,191,53);
triangle(-60,235,5,55,90,235);

stroke(103,61,16);
fill(103,61,16);
rectMode(CENTER);
rect (395,250,35,200);
stroke(37,191,53);
fill(37,191,53);
triangle(312,235,394,55,450,235);

stroke(250,190,116);
strokeWeight(50);
strokeCap(PROJECT);
line(120,287,173,287);
line(110,294,186,323);
line(186,294,111,323);

line(120,350,173,350);
line(110,385,186,414);
line(186,385,111,414);

image(Paisaje2,400,0);

println("X");
println(mouseX);
println("Y:");
println(mouseY);
}
