PFont FTrackItalic;
PImage detroitFoto;

int tamT;

void setup () {
  size (600,600);

FTrackItalic = loadFont ("Track-Italic-48.vlw");

detroitFoto = loadImage ("logo.png");
imageMode (CENTER);

tamT = 0;
colorMode (HSB);
}

void mouseDragged () {
fill (255);
triangle (tamT, 450, tamT, 200, frameCount, 150);
triangle (600, 250, 600, 500, 600-150-frameCount, 600-150);
triangle (tamT, tamT, 600, tamT, 300, frameCount);
triangle (tamT, 600, 250, 600, 520, frameCount);
triangle (tamT, 1280+370 -frameCount, 250, 1280+370 -frameCount, 520, frameCount);
}

 
void draw () {
background (255);

println (frameCount);


//figuras
if ((frameCount >= 400) || (frameCount >= 1000)){
 fill (209, 1, 76, random (254));}
 else { 
 fill (0,0,60, random (254));}

noStroke ();
triangle (tamT, 450, tamT, 200, frameCount, 150);
triangle (600, 250, 600, 500, 600-150-frameCount, 600-150);
triangle (tamT, tamT, 600, tamT, 300, frameCount);
triangle (tamT, 600, 250, 600, 520, frameCount);
rect (tamT, 1280+370 -frameCount, width, height); 
triangle (tamT, 1280+370 -frameCount, 250, 1280+370 -frameCount, 520, frameCount);

//Texto

//Cargos
fill (#B7B3B3);
textFont ( FTrackItalic );
textSize (25);
text ("Escrita y dirigida por", 5, 800-frameCount);
text ("Productor ejecutivo", 5, 900-frameCount);
text ("Director del juego", 5, 1000-frameCount);

text ("Kara", 5, 1150-frameCount);
text ("Connor", 5, 1250-frameCount);
text ("Markus", 5, 1280+70-frameCount);
text ("alice", 5, 1280+170-frameCount);
text ("hank anderson", 5, 1280+270-frameCount);

text ("Luther", 5, 1280+440-frameCount);
text ("north", 5, 1280+540-frameCount);
text ("josh", 5, 1280+640-frameCount);
text ("carl manfred", 5, 1280+770-frameCount);
text ("amanda", 5, 1280+870-frameCount);
text ("carl manfred", 5, 1280+770-frameCount);
text ("simon/daniel", 5, 1280+970-frameCount);

text ("soundtranck de kara", 5, 1280+1140-frameCount);
text ("sondtrack de connor", 5, 1280+1240-frameCount);
text ("soundtrack de markus", 5, 1280+1340-frameCount);


text ("director de producción", 5, 1280+1540-frameCount);
text ("productores", 5, 1280+1640-frameCount);
text ("manager", 5, 1280+1870-frameCount);
text ("asistentes de producción", 5, 1280+1970-frameCount);


//Nombres
fill (#292929);
text ("David Cage", 5, 830-frameCount);
text ("Guillaume De Fondaumiere", 5, 930-frameCount);
text ("Gregorie Diaconu", 5, 1030-frameCount);

text ("Valorie curry", 5, 1180-frameCount);
text ("bryan dechart", 5, 1280-frameCount);
text ("Jesse williams", 5, 1280+100-frameCount);
text ("audrey boustani", 5, 1280+200-frameCount);
text ("clancy brown", 5, 1280+300 -frameCount);

text ("evan parke", 5, 1280+470-frameCount);
text ("minka kelly", 5, 1280+570-frameCount);
text ("parker sawyers", 5, 1280+670-frameCount);
text ("lance henriksen", 5, 1280+800-frameCount);
text ("simbi kali", 5, 1280+900-frameCount);
text ("ben lambert", 5, 1280+1000-frameCount);

text ("philip sheppard", 5, 1280+1170-frameCount);
text ("nima fakhrara", 5, 1280+1270-frameCount);
text ("john paesano", 5, 1280+1370-frameCount);

text ("sophie buhl", 5, 1280+1570-frameCount);
text ("karim benitares", 5, 1280+1670-frameCount);
text ("maxime besenval", 5, 1280+1700-frameCount);
text ("guillaume delorme ", 5, 1280+1730-frameCount);
text ("alexander plissonneau", 5, 1280+1760-frameCount);
text ("marlene richer", 5, 1280+1790-frameCount);
text ("sandrine cao", 5, 1280+1900-frameCount);
text ("dimitri barabe", 5, 1280+2000-frameCount);
text ("juliette pouyer", 5, 1280+2030-frameCount);


// Titulos
fill (#408AC1);
textFont ( FTrackItalic );
textSize (30);
text ("REPARTO PRINCIPAL", (275), 1100-frameCount);
text ("reparto secundario", 240, 1280+370 -frameCount);
text ("Soundtrack original", 230, 1280+1070-frameCount);
text ("equipo de producción", 215, 1280+1440-frameCount);

//Foto

image (detroitFoto, width/2, 600-frameCount);
detroitFoto.resize (528,184);

if (frameCount >= 3350) {
 frameCount = 0;}

}
