int x= 200;
int dx = 7;
float djX;
float djY;
void setup(){
size(800, 700);
}
void draw(){
djX= mouseX;
djY= mouseY;
// sun
background(10, 100, 255);
fill(255, 255, 0);
stroke(255, 10, 10);
ellipse(x, 150, 50, 50);
x= x + 3;

  if (x + 25 > width) {
    x= 0;
  }
//x= x + 4;

//if( x + 25 > width || x - 25 < 0) //( x - 25 < 0);
//dx = dx * - 1;

//tree a
fill(255, 0, 255);
stroke(0, 255, 200);
rect(700, 300, 50, 100);
// head tree
fill(0, 255, 200);
stroke(200, 100, 255);
ellipse(720, 278, 100, 70);

//tree b
fill(255, 0, 255);
stroke(0, 255, 200);
rect(500, 300, 50, 100);
// head tree
fill(0, 255, 200);
stroke(200, 100, 255);
ellipse(527, 278, 100, 70);

// house
fill(255, 46, 61);
stroke(10);
rect(300, 340, 100, 65);
fill(255, 255, 255);
rect(320, 350, 10, 10);
fill(255, 255, 255);
rect(370, 350, 10, 10);

// house door
fill(255, 255, 255);
rect(345, 375, 15, 60);

// house head
fill(100, 30, 10);
stroke(200, 150, 0);
triangle(300,340, 350,310, 400,340);

// grass
fill(0, 255, 0);
stroke(0);
rect(0, 400, 800, 300);
// man face
fill(255, 0, 255);
stroke(0);
ellipse(djX, djY, 50, 80);
// eyes
fill(100, 46, 41);
ellipse(djX + 10, djY-20, 10, 15);
ellipse(djX - 10, djY-20, 10, 15);
// mouth
fill(252, 65, 65);
ellipse(djX, djY+20, 10, 15);
// neck
rect(djX-3, djY+40, 10, 15);
// man body
fill(255, 255, 200);
stroke(90, 255, 0);
rect(djX-40, djY+55, 80, 50);
// leg
fill(0, 255, 255);
stroke(0);
rect(djX-40, djY+105, 10, 50);
rect(djX+31, djY+105, 10, 50);
// arm
fill(0);
stroke(0);
line(djX-41, djY+54, djX-90, djY+90);
line(djX+40, djY+54, djX-35, djY+90);

}
