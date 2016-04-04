float xsun= 500;
float ysun= 150;
float speedx= 1;
float speedy= 1;
float xgold = 60;
float ygold = 650;
float speedxgold = 2;
float speedygold = 2;
float xlex = 250;
float ylex = 600;
float speedxlex = 3;
float speedylex = 3;
float horizon;

void setup()
{
  size(800, 800);
  horizon=  height/2;
}

void draw()
{
  scene();
  movesun();
  movegold();
  movelex();
  if ( dist(xlex,ylex, xgold,ygold) < 20 ) {
    xgold=  random( 0, width );
    ygold=  random( horizon, height );
  }
}

void scene()
{
  background(10, 100, 255);

  // grass
  fill(0, 255, 0);
  stroke(0);
  rect(0, horizon, 800, 500);

  gold();


  // sun
  fill(255, 255, 0);
  stroke(255, 10, 10);
  ellipse(xsun, ysun, 50, 50);

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

 
   house();
  

  //lex
  fill(0, 0, 0);
  stroke(0, 0, 0);
  ellipse(xlex, ylex, 50, 60);
  // ear
  fill(0, 0, 0);
  ellipse(xlex + 25, ylex - 25, 30, 25);
  stroke(0, 0, 0);
  //ear
  fill(0, 0, 0);
  ellipse(xlex - 27, ylex - 23, 30, 25);
  stroke(0);
  // eye
  fill(255, 255, 0);
  ellipse(xlex + 15, ylex - 5, 10, 15);
  ellipse(xlex - 10, ylex - 8, 10, 15);
  // mouth
  fill(255, 255, 0);
  ellipse(xlex+ 1, ylex + 20, 15, 9);
}
void gold() {
  //gold
  //--  fill(255, 55, 55);
  stroke(80);
  noStroke();
  fill( random(150,255), random(100,150), random(50) );
  ellipse(xgold, ygold, 75, 35);
  fill( random(200,255), random(100,150), 55);
  ellipse(xgold, ygold, 55, 25);
  fill( random(150,255), random(100,150), random(50) );
  ellipse(xgold, ygold, 35, 15);
  stroke(80);
}

void house() {
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
  rect(345, 375, 15, 30);

  // house head
  fill(100, 30, 10);
  stroke(200, 150, 0);
  triangle(300, 340, 350, 310, 400, 340);
  ////////  x1  y1    x2    y2    x3    y3
  //triangle(50, 50,   100, 100,   100, 50);
  //fill(255,0,0);
  //textSize(20);
  //rect(50, 50, 4, 4);    text( "(50,50)", 30,40 );
  //rect(100, 100, 4, 4);    text( "(100,100)", 100,110 );
  //rect(100, 50, 4, 4);    text( "(100,50)", 100,30 );
  //textSize(12);
}


void movesun()
{
  xsun = xsun + speedx;
  ysun = ysun + speedy;

  if (xsun > width || xsun < 0)
  {
    speedx = speedx * - 1;
  }
  if (ysun > 50|| ysun < 0)
  {
    speedy = speedy * - 1;
  }
} 
void movegold()
{
  //--  xgold = xgold + speedxgold;
  //--  ygold = ygold + speedygold;

  if ( xgold > width || xgold < 0)
  {
    speedxgold = speedxgold * -1;
  }
  if ( ygold > width || ygold < 0)
  {
    speedygold = speedygold * -1;
  }
}
void movelex()
{
  speedxlex=  (xgold-xlex) / 30;
  speedylex=  (ygold-ylex) / 30;
  
  xlex = xlex + speedxlex;
  ylex = ylex + speedylex;

  if ( xlex > width || xlex < 0)
  {
    speedxlex = speedxlex * -1;
  } 
  if ( ylex > height || ylex < horizon)
  {
    speedylex = speedylex * -1;
  }
}
