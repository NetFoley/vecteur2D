program projetPong;

uses crt,
unitVect2D, pong_gameObject, pong_balle, SDL2_image;

var

balle1 : balle;
balle2 : balle;
scalaire: integer;

BEGIN
clrScr;

//On initialise les coordonees des vecteurs
setVectPosX(balle1.obj.position, 10);
setVectPosY(balle1.obj.position, 10);
setVectPosX(balle2.obj.position, 5);
setVectPosY(balle2.obj.position, 15);
afficherVect(balle1.obj.position);
afficherVect(balle2.obj.position);
writeln();

//Test des methodes de Vect2D
balle1.obj.position := addiVects(balle1.obj.position, balle2.obj.position);
balle1.obj.position := soustVects(balle1.obj.position, balle2.obj.position);
scalaire := multiVects(balle1.obj.position, balle2.obj.position);
balle1.obj.position := multiVectScalaire(balle1.obj.position, 5);
balle1.obj.position := produitVect(balle1.obj.position, balle2.obj.position);
writeln();

afficherVect(balle1.obj.position);
afficherVect(balle2.obj.position);


readln();
END.


