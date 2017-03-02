float angle;
float jitter;
void setup() 
{ 
size(500,500);  
stroke(159,219,236);
background(blue);
rectMode(CENTER);
stroke(3);

// declaring loop variables
noFill();
  aX1 = 366;
  aY1 = 306;
  aX2 = 374;
  aY2 = 337;
  cX1 = 163;
  cY1 = 397;
  cX2 = 125;
  cY2 = 394;
}
void pointLights(int x, int y)     //CUSTOM FUNCTION
{
  ellipse(x, y, 10, 10);    
  ellipse(x + 20, y + 20, 10, 10);    
}
//color and curves
int cX1, cY1, cX2, cY2; // control points
int aX1, aY1, aX2, aY2; // where the curv start and end

// declaring color manipulations
color blue = #190589; // dark blue
color blue2 = #35e8f2; // light blue
color blue3 = #17777c; // medium blue
color red = #f22409; // hot red
color red2 = #bc4b3c; // plush red
color red3 = #ad1501; // dark red
color green = #1ff43f; // light green
color green2 = #659b6d; // aqua green
color green3 = #068219; // dark green
color white = #e6efe7; // cloud white
color white2 = #fffeed; // yellow white
color white3 = #fcfcfc; // pure white
color black = #000000; // black
color black1 = #282821; // grey black
color tan = #d6a813; // tan
color brown = #7f4201; // brown
color violet = #68017f; // violet tone
color violet1 = #3a0147; // violet dark
color violet3 = #ca04f7; // violet light

boolean change_color = false;
     void mouseReleased()    // CUSTOM FUNCTION
  { 
    //print(mouseX+","+mouseY+"      "); 
    
    //change the color
    change_color = !change_color;     
    
    if(change_color == true){
       blue = #ce0606;
       red = #f22409;
       green = #1ff43f; 
        white = #e6efe7;
        black = #000000;
        tan = #d6a813;
        brown = #7f4201;
        violet = #68017f;
         violet3 = #ca04f7; // violet light
    }
                                            // MOUSE INTERACTION
    else{
       blue = #17777c;
      red = #bc4b3c;
      green = #659b6d;
      white = #fffeed;
      black = #282821;
      violet = #068219;
       violet3 = #1ff43f;
    }
  }

void draw() {     // DRAW FUNCTION
  stroke(tan);
  //draw curve function
 { background(white);
curve(243, 456, 301, 478, 340, 455, 367, 455);   // CURVE FUNCTION

float mainChordTop;
fill(green3);
quad(161,2,180,24,247,24,262,1);
 
 float chords0;
     line(141,292,141,363);
      line(185,286,190,360);
      line(244,275,243,368);
      line(370,248,370,310);
      line(86,279,82,370);
      line(314,273,312,331);  
      
  float brokenGlass;
  fill(green3);
  ellipse(321,480,16,10);
  beginShape();
  vertex(337,472);
  vertex(352,472);
  vertex(352,457);
  vertex(370,470);
  vertex(370,491);
  vertex(346,491);
  vertex(337,472);
  endShape(CLOSE);
  
  beginShape();
  vertex(321,456);
  vertex(303,456);
  vertex(291,476);
  endShape(CLOSE);
  
  float base; // set base to rectangle holding lights and ropes
  // fill(20,139,68);
  fill(violet);
  beginShape();
  vertex(90,203);
  vertex(357,146);
  vertex(406,260);
  vertex(68,318);
  endShape(CLOSE);
  
  fill(green);
  beginShape();
  vertex(105,214);
  vertex(109,287);
  vertex(367,237);
  vertex(355,167);
  endShape(CLOSE);
  
  float mainRopeTop;     
  strokeWeight(3);
  line(233,219,217,10);
  fill(159,218,235); // blue
  ellipse(217,9,30, 30); 
  fill(25,157,73); // green
  ellipse(217,9,18,18); 
  
  //set curves for lights

//light 3
strokeWeight(1);
fill(blue3);
beginShape();
vertex(189,388);
bezierVertex(255, 397, 194, 347, 187, 356);    // CURVE FUNCTIONS
bezierVertex(187,356,176,357,189,388);
endShape(CLOSE);
          
// light 2
fill(violet);
beginShape();
vertex(139,357);
bezierVertex(138,361,80,388,125,394);
bezierVertex(125,394,180,387,139,357);
endShape(CLOSE);

// light1
fill(blue);
beginShape();
vertex(82,366);
bezierVertex(121,350,105,404,81,404);
bezierVertex(62,410,37,417,82,366);
endShape(CLOSE); 

// light 4
fill(green);
beginShape();
vertex(242,363);
bezierVertex(260,333,286,378,252,386);
bezierVertex(219,379,240,380,242,363);
endShape(CLOSE); 

// light 5
 fill(blue);
beginShape();
vertex(366,306);
bezierVertex(370,292,404,321,374,337);
bezierVertex(354,341,336,340,366,306);
endShape(CLOSE);   
  }
  if (second() % 2 == 0) {  
    jitter = random(-0.1, 0.1);
  }
  angle = angle + jitter;
  float c = cos(angle);
  translate(233,210);
  rotate(c);
  fill(violet3);
  ellipse(1, 1, 190, 15);
   pointLights(7,7);   //CUSTOM FUNCTION called
}