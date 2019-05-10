unit unitVect2D;

interface

type
	Vect2D = record
		posX : integer;
		posY : integer;

end;

function getVectPosX(position : Vect2D):integer;
function getVectPosY(position : Vect2D):integer;
procedure setVectPosX(var position : Vect2D; X :integer);
procedure setVectPosY(var position : Vect2D; Y :integer);
procedure afficherVect(vecteur : Vect2D);

function addiVects(vect1 : Vect2D; vect2: Vect2D) : Vect2D;
function soustVects(vect1 : Vect2D; vect2: Vect2D) : Vect2D;	
function multiVects(vect1 : Vect2D; vect2 : Vect2D) : integer;
function multiVectScalaire(vect1 : Vect2D; scalaire : integer) : Vect2D;
function produitVect(vect1 : Vect2D; vect2: Vect2D) : Vect2D;	

implementation

function getVectPosX(position : Vect2D) : integer;
//Renvoit la valeur X d'un vecteur position
	begin
	getVectPosX := position.posX;
	end;

function getVectPosY(position : Vect2D) : integer;
//Renvoit la valeur Y d'un vecteur position 
	begin
	getVectPosY := position.posY;
	end;

procedure setVectPosX(var position : Vect2D; X : integer);
//Affecte la valeur X à la position X d'un vecteur position
	begin
	writeln('Affectation de la valeur ', X, ' a laxe X');
	position.posX := X;
	end;

procedure setVectPosY(var position : Vect2D; Y : integer);
//Affecte la valeur Y à la position Y d'un vecteur position
	begin
	writeln('Affectation de la valeur ', Y, ' a laxe Y');
	position.posY := Y;
	end;

	
procedure afficherVect(vecteur : Vect2D);
//AFfiche les valeurs X et Y d'un vecteur
	begin
	writeln('Vecteur : ', 'X : ', vecteur.posX, ', Y : ', vecteur.posY);
	end;
	

function addiVects(vect1 : Vect2D; vect2: Vect2D) : Vect2D;
{ Addition de deux vecteurs }
	var
		vectRes : Vect2D;
	begin	
	vectRes.posX := vect1.posX + vect2.posX;
	vectRes.posY := vect1.posY + vect2.posY;
	writeln(' Addition de deux vecteurs : X : ', vect1.posX, ' + ', vect2.posX, ' = ', vectRes.posX, ', Y : ', vect1.posY, ' + ', vect2.posY, ' = ', vectRes.posY);
	addiVects := vectRes;
	end;

function soustVects(vect1 : Vect2D; vect2: Vect2D) : Vect2D;	
{ Soustraction de deux vecteurs }

	var
		vectRes : Vect2D;
	begin
	vectRes.posX := vect1.posX - vect2.posX;
	vectRes.posY := vect1.posY - vect2.posY;
	writeln('Soustraction de deux vecteurs : X : ', vect1.posX, ' - ', vect2.posX, ' = ', vectRes.posX, ', Y : ', vect1.posY, ' - ', vect2.posY, ' = ', vectRes.posY);
	soustVects := vectRes;
	end;
	
function multiVects(vect1 : Vect2D; vect2: Vect2D) : integer;	
//Produit scalaire de deux vecteurs
	var
		vectRes : integer;
	begin
	vectRes := vect1.posX * vect2.posX + vect1.posY * vect2.posY;
	writeln('Produit scalaire de deux vecteurs : ', vect1.posX, ' * ', vect2.posX, ' + ', vect1.posY, ' * ', vect2.posY, ' = ', vectRes);
	multiVects:= vectRes;
	end;
	
function multiVectScalaire(vect1 : Vect2D; scalaire : integer) : Vect2D;
{ Multiplication par un scalaire }
	var
		vectRes : Vect2D;
	begin
	vectRes.posX := vect1.posX * scalaire;
	vectRes.posY := vect1.posY * scalaire;
	writeln('Multiplication par ', scalaire, ' dun vecteur : X : ', vect1.posX, ' * ', scalaire, ' = ', vectRes.posX, ', Y : ', vect1.posY, ' * ', scalaire, ' = ', vectRes.posY);
	multiVectScalaire:= vectRes;
	end;
	
function produitVect(vect1 : Vect2D; vect2: Vect2D) : Vect2D;	
//Produit vectorielle de deux vecteurs
var
	vectRes : Vect2D;
begin
	vectRes.posX := vect1.posY - vect2.posY;
	vectRes.posY := vect2.posX - vect1.posX;
	writeln('Produit vectorielle de deux vecteurs : X : ', vect1.posY, ' - ', vect2.posY, ' = ', vectRes.posX, ', Y : ', vect2.posX, ' - ', vect1.posX, ' = ', vectRes.posY);
	produitVect:= vectRes;	
end;
end.


