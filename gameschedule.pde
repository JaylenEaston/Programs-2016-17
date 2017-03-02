// if Ring a Bell = false display it in the graph
// else exclude it from the graph 
// or show all in graph 
void mouseReleased()
{ 
print(mouseX+","+mouseY+"      ");
}

Table lines;
Table linenumbers;
int screen = 0;
int counter = 0;
void setup() {
size(1300,700);
background(0,130,255); // blue sky
lines = loadTable("Book2.csv");
linenumbers = loadTable("BookAPR.csv");
}
void draw() {
  //This case statement determins which screen gets displayed. The screen changes when the player presses 1,2, or 3.  
  background(80,80,80);
   if (keyPressed){
     if(key == '1')
       screen = 0;
     }
     if(key== '2'){
       screen = 1;
       if(counter==1){
         counter=0;
       }
     }else if(key =='3'){
       screen = 2;
       if(counter==1){
         counter=0;
       }
     }else if(key == '4'){
       screen = 3;
     }else if(key == '5'){
       screen = 4;
   }
//println (screen); 

switch(screen){
  case 0:
    home();
    break;
  case 1:
    schedule();
    break;
  case 2:
    apr();
    break;
    case 3:
    platform();
    break;
    case 4:
    rating();
}
}
void mouseRelease() {
  
}

void home() {
  background(80,80,80); 
  
  fill (0,0,0);
  ellipse(width/2,height/2,173,133);
  fill (178,34,34);
  fill(200,2002,00);
   text ("This list is from the years 2015 - 2016",549,433);
   ellipse(width/2,height/2,140,50);
   fill(10,10,220);
   ellipse(662,347,20,20);
   fill(255,140,0);
   ellipse(662,347,8,8);
   fill(32,12,200);
   text ("Start",width/2 - 40,height/2);
   
   fill (0,0,0);
   ellipse(384+400,height/2,30,30);
   ellipse(452+400,height/2,20,20);
   ellipse(60+400,height/2,30,30);
   fill(200,200,200);
 text ("Press 1,2,3,4, or 5",595,390);
 }
void schedule() {
  for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 0), 10, 20*i);} // titles
  for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 1), 300, 20*i);} // type
 for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 2), 500, 20*i);} // developer
  for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 3), 780, 20*i);} // platform
  for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 4), 900, 20*i);} // appeal
  for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 5), 1090, 20*i);} // rating
  for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 6), 1144, 20*i);} // ring a bell
  for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 7), 1240, 20*i);} // APR
}
void apr() {
  stroke(123,104,238); // violet
  line(102,36,749,42); // ninja gaiden
  line(157,75,900,77); // tomb raid
  line(66,137,802,133); // titanfall 
  line(64,177,766,175); // mafia
  line(116,198,744,195); // dead by day
  line(131,237,915,233); // GTA
  line(97,256,878,252); // dark souls
  line(235,278,878,274); // MGS
  line(89,297,854,293); // battlefield
  line(75,315,832,314); // tatan 2
  line(52,337,882,333); // doom
  line(173,357,914,355); // skyrim
  line(156,439,845,435); // batman
  line(119,458,861,454); // mortal combat
  line(193,519,886,512); // assasin
  line(156,538,848,537); // dragon age
  line(58,579,760,577); // hitman  
  line(175,619,646,614); // homefront 
  // teen 2
  stroke(255,140,0); // orange
  line(58,97,802,94);   // recore
  line(55,119,825,116); // halo 5
  line(260,157,837,156); // naruto
  line(170,217,915,212); // uncharted 
  line(137,377,708,376); // star wars
  line(123,399,980,392); // last guardian
  line(77,559,825,550); // overwatch
  line(111,597,680,599); // street fighter
  
  // evryone 1
  stroke(50,205,50); // green
  line(76,55,846,57); // 2k
  line(169,417,835,412); //socer 
  line(60,478,897,477); // journey 
  line(95,496,721,490); // no man sky
  
  for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 0), 10, 20*i);} // titles
  text("1",349,648);
  text("2",427,648);
  text("3",498,648);
  text("4",563,648);
  text("5",626,648);
  text("6",705,648);
  text("7",786,648);
  text("8",842,648);
  text("9",910,648);
  text("10", 973,648);
  // guages
  rect(711,30,2,604); // 6
  rect(848,30,2,604); // 8
  rect(984,30,2,604); // 10
  rect(629,30,2,604); // 5
  text("Average Player Rating(APR)",73,671);
}
void platform () {
  stroke(255,249,51); // YES
  line(97,37,688,298); // 0 ninja gaiden
  line(158,77, 689,299); //3 tomb raider
  line(54,117,686,105); // 5 Halo5
  line(65,137,689,106); // 6 titanfall
  line(240,158,687,543); // 7 naruto
  line(171,218,690,543); // 10 uncharted
  line(133,234,692,299); // 11 GTA
  line(96,257,685,296); // 12 dark souls
  line(237,278,688,297); // 13 MGS 
  line(84,297,684,295); // 14 battlefiled 1
  line(79,318,689,299); // 15 titan 2
  line( 136,378,688,299); // 18 star wars
  line(124,398,688,549); // 19 last guardian
  line(155,438,688,299); // 21 batman
  line(60,479,687,544); // 23journey
  line(94,501,689,543); // 24 no man sky
  line(187,515,686,300); // 25 assasin b flag 
  line(106,595,684,543); // 29 street fighter
  // sepeation
  
  stroke(205,92,92); // NO
  line(75,56,687,300); // 2 2K
  line(57,97,692,105);  // 4 recore
  line(64,174,688,296); // 8 mafia
  line(118,198,692,542); // 9 daylight
  line(53,337,693,301); // 16 doom
  line(172,359,686,299); // 17 skyrim 
  line(171,416,691,302); // 20 pro soccer
  line(112,457,690,303); // 22 moatal combat
  line(147,534,693,296); // 26 dragon age
  line(82,558,685,295); // 27 overwatch
  line(60,578,690,298); // 28 hitman
  line(175,618,689,296); // 30 homefront
  
  fill(245,245,220);
  for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 0), 10, 20*i);} // titles
  stroke(220);
  fill(0,191,255  );
  ellipse(689,103,20,20); /* xbox */  text("Xbox",710,109);
  ellipse(689,296,20,20); /* cross-platform */ text("cross-platform",710,296);
  ellipse(689,543,20,20); /* PS4 */ text("PS4",710,543);
  text("Platform",476,22);
}
void rating() {
  // mature 3
  stroke(178,34,34); // red
  line(102,36,428,36); // ninja gaiden
  line(157,75,426,77); // tomb raid
  line(66,137,427,133); // titanfall 
  line(64,177,426,175); // mafia
  line(116,198,425,195); // dead by day
  line(131,237,426,233); // GTA
  line(97,256,426,252); // dark souls
  line(235,278,427,274); // MGS
  line(89,297,427,293); // battlefield
  line(75,315,424,314); // tatan 2
  line(52,337,425,333); // doom
  line(173,357,426,355); // skyrim
  line(156,439,425,435); // batman
  line(119,458,427,454); // mortal combat
  line(193,519,430,512); // assasin
  line(156,538,425,537); // dragon age
  line(58,579,426,577); // hitman  
  line(175,619,428,614); // homefront 
  
  // teen 2
  stroke(255,140,0); // orange
  line(58,97,671,94);   // recore
  line(55,119,674,116); // halo 5
  line(260,157,674,156); // naruto
  line(170,217,675,212); // uncharted 
  line(137,377,675,376); // star wars
  line(123,399,674,392); // last guardian
  line(77,559,675,550); // overwatch
  line(111,597,676,599); // street fighter
  
  // evryone 1
  stroke(50,205,50); // green
  line(76,55,923,57); // 2k
  line(169,417,926,412); //socer 
  line(60,478,923,477); // journey 
  line(95,496,924,490); // no man sky
  
  for( int i = 0; i < 32; i++) {
  text(lines.getString(i, 0), 10, 20*i);} // titles
  //for( int i = 0; i < 31; i++) {
  //text(lines.getString(i, 1), 300, 20*i);} // platform
  //for( int i = 0; i < 32; i++) {
  //text(lines.getString(i, 2), 400, 20*i);} // rating
 // for( int i = 0; i < 31; i++) {
  //text(lines.getString(i, 3), 500, 20*i);} // ?
  //for( int i = 0; i < 31; i++) {
  //text(lines.getString(i, 4), 600, 20*i);} // Ring a Bell
  text("Mature",403,650);
  text("Teen",656,650);
  text("Everyone",892,650);
 
  fill(178,34,34);
  rect(422,30,8,604); // mature
  fill(255,140,0);
  rect(671,30,8,604); // teen
  fill(50,205,50);
  rect(920,30,8,604); // everyone
  text("Rating",42,667);
}