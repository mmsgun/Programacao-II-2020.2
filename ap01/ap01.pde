int bastaoX = 0;
int bastaoY = height + 350;
int larguraB = 120;
int alturaB = 20;
int bolaX = width/2;
int bolaY = height/2;
int dX = 5;
int dY = 10;

void setup() {
  size(800, 500);
  noStroke();
}

void Bastao() {
  rect(bastaoX, bastaoY, larguraB, alturaB);
  if ((keyPressed == true) && (keyCode == RIGHT)) {
    bastaoX = bastaoX + 10;
    if (bastaoX >= width - larguraB) {
      bastaoX = width - larguraB;
    }
  }
  if ((keyPressed == true) && (keyCode == LEFT)) {
    bastaoX = bastaoX - 10;
    if (bastaoX <= 0) {
      bastaoX = 0;
    }
  }
}

void Bola() {
  ellipse(bolaX, bolaY, 20, 20);
  bolaX = bolaX + dX;
  bolaY = bolaY + dY;
  if ((bolaX >= width-10) || (bolaX <= 10)) {
    dX = -dX;
  }
  if (bolaY <=10) {
    dY = -dY;
  }
  if (bolaY > height+500) {
    bolaX = width/2;
    bolaY = height/2;
  }
}


void draw() {
  background(0); 
  Bastao();
  Bola();
  if ((bolaY >= bastaoY-10) && (bolaY <=bastaoY+10) && (bolaX > bastaoX) && (bolaX < bastaoX+larguraB)){
    dY = -dY;
  }
}
