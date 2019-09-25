//Opsætter variabler for kameraet 
int centerX;
int changeX;
int changeY;
void setup()
{
  //Sætter størrelse på vinduet, og sætter det il et 3d vindue
  size(1000, 1000, P3D);
  centerX= width/2;
  frameRate(60);
}
void draw() {
  clear();
  //Opsætter kameraet 
  changeX = (500-mouseX);
  changeY = (500-mouseY);
  camera(width/2+changeX, height/2.0+changeY, (900) / tan(PI*30.0 / 180.0), centerX, height/2.0, 500, 0, 1, 0);
  //rykker der hvor kasserne bliver tegnet til at starte med
  translate(200, 300);
  //Opsætter et loop der tegner 3d firkanter 
  int i =1;
  int i2=0;
  int i3=0;
  while (i3 <= 3) {
    //Farver, rykker og tegner firkanterne
    fill(255, 0, 0);
    translate(120*i, 120*i2, 120*i3);
    box(110+random(-20, 21));
    translate(-120*i, -120*i2, -120*i3);
    //Sørger for at alle boxene bliver tegnet
    i++;
    if (i == 5) {
      i= 1;
      i2++;
    }
    if (i2==4) {
      i=1;
      i2 = 0;
      i3 ++;
    }
  }
}
