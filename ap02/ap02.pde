int bastaoX = 0;
int bastaoY = height + 350;
int larguraB = 120;
int alturaB = 20;
int inimigoX = 0;
int inimigoY = 30;
int larguraE = 120;
int alturaE = 20;
int bolaX = bastaoX + 20;
int bolaY = bastaoY - 20;
int dX = 5;
int dY = 10;
int dEx = 5;

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

void Inimigos() {
  rect(inimigoX, inimigoY, larguraE, alturaE);
  inimigoX = inimigoX + dEx;
  if (inimigoX >= width - larguraE) {
    dEx = -dEx;
  }
  if (inimigoX <= 0) {
    dEx = -dEx;
  }
}

void draw() {
  background(0); 
  Bastao();
  Bola();
  Inimigos();
  if ((bolaY >= bastaoY-10) && (bolaY <=bastaoY+10) && (bolaX > bastaoX) && (bolaX < bastaoX+larguraB)) {
    dY = -dY;
  }
    if ((bolaY >= inimigoY-10) && (bolaY <=inimigoY+10) && (bolaX > inimigoX) && (bolaX < inimigoX+larguraE)) {
    dY = -dY;
    inimigoY = -500;
    dEx = 0;
  }
}
