 PImage auto;
void setup(){
  size (800,400);
  auto = loadImage("auto.png");
  image(auto,0,0);
}
void draw(){
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  
  fill(178,211,102);   
  
  rect(400,0,400,262); //fondo
  fill(82,90,40);
   beginShape();
  vertex(657,0);
  vertex(663,128);
  vertex(774,193);
  vertex(667,141);
  vertex(736,169);
  vertex(800,161);
  vertex(800,0);
  endShape();
  
  ellipse(505,84,80,100);
  ellipse(590,19,39,50);
   fill(203,223,84);
  triangle(400,260,400,46,613,260);
  
  
  
  
  fill(184,199,211);
  rect(400,262,400,400);   //suelo
  //ruedas 
  fill(10);
  ellipse(713,240,63,80);
  ellipse(492,240,63,80);
  ellipse(680,240,43,65);
  fill(139);
  ellipse(713,240,55,72);
  ellipse(492,240,55,72);
  fill(200);
  ellipse(713,240,7,10);
  ellipse(492,240,7,10);
  //cuerpo del auto 
  fill(255,0,0);
  rect(524,165,156,87);
  // parte delante 
  beginShape(); 
  vertex(523, 232);
  vertex(512, 208);
  vertex(491, 195);
  vertex(463, 208);
  vertex(456,240);
  vertex(415,240);
  vertex(410,232);
  vertex(418,188);
  vertex(437,171);
  vertex(523,165);
  endShape();
  // parte Trasera 
  beginShape();
  vertex(679,225 );
  vertex(692, 205);
  vertex(713, 192);
  vertex(737, 208);
  vertex(745,242);
  vertex(783,236);
  vertex(783,208);
  vertex(773,192);
  vertex(770,164);
  vertex(680,165);
  endShape();

   beginShape();
  vertex(515,165);
  vertex(581, 110);
  vertex(680, 115);
  vertex(737, 164);
  endShape();
// techo 
 beginShape();
  curveVertex(515,165);
  curveVertex(581, 110);
  curveVertex(680, 115);
  curveVertex(737, 164);
  endShape();
  
  //ventenas 
fill(151,177,250);
 beginShape();
  vertex(524,165);
  vertex(587, 110);
  vertex(670, 115);
  vertex(707, 142);
  vertex(707,158);
  vertex(678,164);
  endShape();
  fill(44,53,80);
  rect(625,114,6,52);
  //luces 
  fill(230);
  beginShape();
  vertex(421,196);
  vertex(427,185);
  vertex(440,183);
  vertex(451,180);
  vertex(456,180);
  vertex(444,195);
  endShape();
  beginShape();
  vertex(744,168);
  vertex(771,172);
  vertex(774,193);
  vertex(753,196);
  vertex(757,184);
  vertex(748,180);
  vertex(748,177);
  endShape();
  
  rect(610,175,10,5);
  rect(680,175,10,5);
  fill(20);
  triangle(427,228,437,213,440,235);
  
  
  
}
