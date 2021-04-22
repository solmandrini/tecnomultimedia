void setup () {
size (600, 600);
background (#E8DFD5);

}
void draw() {
noStroke();


// amarillo
fill (255, 255, 0);
triangle (300, 260, 275, 160, 330, 160);

//naranja 
fill(255, 165, 0);
triangle (300, 260, 330, 160, 370, 190); 


//rojo
fill (255, 0, 0);
triangle (300, 260, 370, 190, 380, 300); 


//fucsia
fill(244, 0, 161);
triangle (300, 260, 380, 300, 350, 340);

// magenta
fill (255, 0, 255);
triangle ( 300, 260, 350, 340, 285, 350);

//violeta
fill(138, 43, 226);
triangle (300, 260, 285, 350, 250, 340);


// azul
fill (0,0,255);
triangle (300, 260, 250, 340, 190, 290);


//azul ceruleo
fill(0, 123, 167);
triangle (300, 260, 190, 290, 180, 270);

//cyan
fill(0, 255, 255);
triangle (300, 260, 180, 270, 180, 235);

//verde cyan
fill (0, 255, 161);
triangle (300, 260, 180, 235, 184, 210);


// verde
fill (0, 255, 0);
triangle (300, 260, 184, 210, 250, 165);


 //lima
fill  (191, 255, 0);
triangle (300, 260, 250, 165,275, 160);

//triangulos aparte

//rojo
fill (255, 0, 0);
triangle (450, 250, 370, 190, 380, 300); 

// azul
fill (0,0,255);
triangle (170, 360, 250, 340, 190, 290);

// verde
fill (0, 255, 0);
triangle (180, 145, 184, 210, 250, 165);



}
