//Olivia Chan
//Basaraba
//May 1, 2020
//File name: OliviaChan_AnimatedCard
//This program outputs an animated christmas card using a variety of shapes, colours, and text.
//Decleration section
float snowY=493;//Initial y-value is 493, so that the snow seems to fall smoothly
float textX=0;//Initial x-value is set to 0, for horizontal movement of the text

void setup(){
  size(800,500);
  noStroke();
}

void draw(){
  smooth();//#B2EAFF
  background(#4059D3);
  snowY=snowY+1;//The y value increases by 1 each time, so the snow is falling down vertically
  myBackground();//Methods that stores the non-moving objects and elements
  snowflakes();//Method that stores the animated snow falling
  textX=textX+1;//The x value increases by 1 each time, so that the text is moving to the right
  phrase();//This method outputs an animated phrase(moves horizontally); Merry Christmas(goes after the snow because the phrase should appear on top)
 
}
void snowflakes(){ 
  for(int j=0;j<=500;j+=100){//This loop repeats the chunk to fill the screen
      for(int i=0;i<=800;i+=200){//This loop outputs the same chunk of snow horizontally to fill a row on the output screen
        //6 ellipses that output a chunk of snow
        ellipse(i,snowY-100-j,10,10);//Values are set so that the snow seems to fall naturally
        ellipse(i+40,snowY+10-j,10,10);
        ellipse(i+80,snowY-60-j,10,10);
        ellipse(i+130,snowY-40-j,10,10);
        ellipse(i+170,snowY-90-j,10,10);
        ellipse(i+210,snowY-230-j,10,10);
      }
  }
  if(snowY>593){//If the y value is greater than 593, the value of y is set to 493, which is the initial value of y
      snowY=493;//When y is 493, there are no gaps in the repetition of snow chunks, so it looks like it flows smoothly
    }
  
}
void myBackground(){
  //This outputs the bottom layer of the tree
  fill(#0C9B38);
  triangle(450,360,640,360,545,210);
  fill(#11B744);
  triangle(475,360,660,360,570,210);
  
  //This outputs the middle layer of the tree
  fill(#4FC473);
  triangle(480,270,610,270,545,160);
  fill(#58E082);
  triangle(505,270,630,270,570,160);
  
  //This outputs the top layer of the tree
  fill(#0C9B38);
  triangle(500,200,610,200,555,120);
  fill(#11B744);
  triangle(520,200,610,200,565,135);
  
  //This outputs the ornaments and other decorations on the tree
  stroke(#665BED);
  strokeWeight(10);
  line(450,355,620,300);
  line(480,265,610,230);
  line(530,160,592,175);
  noStroke();
  fill(#F58A79);
  ellipse(510,335,30,30);
  ellipse(550,165,30,30);
  fill(255);
  ellipse(560,320,30,30);
  ellipse(530,250,30,30);
  fill(#FAF023);
  ellipse(613,305,30,30);
  ellipse(580,240,30,30);
  
  //This outputs the trunk of the tree
  fill(#895124);
  rect(535,360,40,40);
  
  //This outputs the star on the tree
  fill(#FFCD00);
  beginShape();
  vertex(555,93);
  vertex(548,104);
  vertex(536,104);
  vertex(544,114);
  vertex(541,126);
  vertex(555,120);
  vertex(569,126);
  vertex(566,114);
  vertex(574,104);
  vertex(562,104);
  vertex(555,93);
  endShape(CLOSE);
  
  //This outputs presents underneath the tree
  fill(#85EA79);//This outputs the first present from the left
  rect(460,385,40,15);
  fill(#F52A23);
  rect(475,385,10,15);
  fill(#FFB846);
  rect(457,375,45,10);
  ellipse(477,372,7,13);
  ellipse(484,372,7,13);
  fill(#D3201A);
  rect(472,375,15,10);
  
  //This outputs the second present from the left(the bag)
  fill(#FA30CB);
  triangle(580,361,600,361,590,370);
  fill(#3E31DB);
  ellipse(590,370,15,7);
  fill(#FA30CB);
  arc(590,402,40,60,radians(180),radians(360));
  
  //This outputs the third present from the left
  fill(#FFAB6A);
  rect(620,373,30,30);
  fill(#FF6A97);
  rect(618,363,33,10);
  stroke(#BA9EE3);
  strokeWeight(4);
  line(622,383,648,374);
  line(622,392,648,383);
  line(622,401,648,392);
  noStroke();

  //Outputs the snowman
  //This outputs the hat of the snowman
  fill(#4D5164); //#3F52C4
  ellipse(725,230,35,30);
  fill(#8E98D8); //#8E98D8
  ellipse(725,242,50,20);
  
  //This outputs the left arm
  stroke(#50371F);
  strokeWeight(6);
  line(647,340,680,345);
  line(655,332,660,340);
  line(670,343,658,350);
  noStroke();
  
  //This outputs the bottom ball of the snowman
  fill(#CBE3FF);
  ellipse(730,380,120,120);
  fill(#E5F1FF);
  ellipse(720,380,110,120);
  
  //This outputs the right arm
  stroke(#50371F);
  line(763,348,795,343);
  line(780,343,786,333);
  line(776,348,785,353);
  noStroke(); 
  
  //This outputs the top ball of the snowman
  fill(#CBE3FF);
  ellipse(730,290,90,90);
  fill(#E5F1FF);
  ellipse(720,290,80,90);
  
  //This outputs the scarf
  fill(#439D5B);
  rect(682,313,90,20);
  fill(#9AB433);
  rect(702,313,20,20);
  rect(740,310,20,50);
  fill(#439D5B);
  rect(740,325,20,20);
  fill(#7E932B);
  rect(753,310,7,15);
  rect(753,345,7,15);
  fill(#237939);
  rect(753,325,7,20);
  
  //This outputs details on the snowman
  fill(#3E26A2);//This outputs 3 buttons on the bottom ball of the snowman
  ellipse(710,395,10,10);
  ellipse(705,375,10,10);
  ellipse(710,355,10,10);
  
  ellipse(700,275,8,8);//This outputs the eyes
  ellipse(730,275,8,8);
  
  ellipse(700,300,6,6);//This outputs the mouth
  ellipse(707,305,6,6);
  ellipse(716,307,6,6);
  ellipse(725,305,6,6);
  ellipse(732,300,6,6);
  
  //This outputs the carrot nose
  fill(#D38E26);
  ellipse(713,288,16,16);
  fill(#EDA02B);
  triangle(670,290,710,280,710,296);
  ellipse(710,288,12,12);

  //Outputs the reindeer
  fill(#9B6D3E);//This outputs the legs
  rect(400,330,35,20); 
  rect(270,350,23,35);
  rect(320,350,23,30);
  rect(370,350,23,35);
  
  fill(#E5E576);//This outputs the tail
  arc(255,300,40,35,radians(45),radians(225));

  fill(#B9824B);//This outputs the main body
  ellipse(335,330,160,70);
  rect(425,330,15,40);
  rect(430,335,15,35); 
  rect(270,375,23,30);
  rect(320,375,23,27);
  rect(370,375,23,23);
  ellipse(440,335,10,10);
  
  //This outputs the head and neck
  fill(#EA2300);//This outputs the nose
  ellipse(448,263,10,10);
  
  stroke(#50371F);//This outputs the antlers
  line(406,240,406,221);//This outputs the first antler from the left
  line(406,221,390,221);
  line(390,221,390,214);
  line(420,243,420,218);//This outputs the second antler from the left
  line(420,225,435,225);
  line(435,225,435,220);
  noStroke();
  
  fill(#9B6D3E);//This outputs the ear
  ellipse(377,246,30,17);
  
  fill(#B9824B);//This outputs the head
  ellipse(415,260,65,40);
  
  rect(382,260,33,70);//This outputs the neck
  stroke(#B9824B);
  fill(0,0,0,0);
  arc(365,280,40,40,radians(360),radians(450));
  noStroke();
  fill(#B9824B);
  ellipse(378,300,10,10);
  
  fill(#1E156F);//This outputs the eye
  ellipse(417,255,8,8);
  
  fill(#1ED33D);//This outputs the collar
  rect(378,280,40,10);
  
  //This outputs the feet
  fill(#50371F);
  ellipse(282,410,27,15);//This outputs the first foot from the left
  ellipse(333,405,27,15);//This outputs the second foot from the left
  ellipse(384,400,27,15);//This outputs the third foot from the left
  ellipse(437,375,27,15);//This outputs the fourth foot from the left
  
  fill(#EAEA95);//This outputs details on the body
  ellipse(298,320,10,10);
  ellipse(335,320,10,10);
  ellipse(373,320,10,10);
  ellipse(318,335,10,10);
  ellipse(354,335,10,10);
  stroke(#9B6D3E);
  fill(0,0,0,0);
  arc(385,325,27,27,radians(360),radians(450));
  noStroke();
  
  //Outputs Santa
  fill(#EA8EB6);//This outputs the pink bag to the left of santa
  triangle(40,300,60,300,50,320);
  fill(#73CB48);  
  ellipse(50,315,20,10);
  fill(#EA8EB6);
  ellipse(50,350,50,70);
  
  fill(#F2FC66);//This outputs the larger present to the left of santa
  rect(20,365,80,80);
  fill(#74B778);
  rect(19,350,82,15);
  fill(#AFEAB3);
  rect(50,365,20,80);
  fill(#F0CD05);
  rect(48,350,24,15);  
  
  fill(#16C64C);//This outputs the green bag behind santa
  ellipse(240,380,90,90);
  triangle(220,310,260,310,240,340);
  fill(#5EE387);
  rect(233,326,20,10);
  
  fill(#C13C3C);
  ellipse(170,315,125,100);//This outputs the body
  
  fill(#D84A4A);
  rect(145,355,13,30);//This outputs the left leg
  rect(180,355,13,30);//This outputs the right leg
  ellipse(177,315,115,100);
  
  fill(#332281);
  ellipse(142,395,34,17);//This outputs the left boot
  rect(144,378,15,15);
  ellipse(196,395,34,17);//This outputs the right boot
  rect(179,378,15,15);
  rect(110,320,110,10);//This outputs the belt
  fill(#FAE019);
  rect(158,318,24,15);
  
  fill(#16C64C);//This outputs the present Santa is holding
  rect(85,310,50,35);
  fill(#5EE387);
  rect(82,310,55,10);
  fill(#EA7C6B);
  rect(102,320,15,25);
  arc(99,310,20,20,radians(240),radians(360));
  arc(120,310,20,20,radians(180),radians(300));
  fill(#F05B44);
  rect(100,310,18,10);
  
  stroke(#D84A4A);//This outputs the right arm 
  fill(0,0,0,0);
  strokeWeight(15);
  arc(178,320,100,100,radians(310),radians(370));
  stroke(#C13C3C);
  strokeWeight(8);
  arc(185,320,70,70,radians(320),radians(370));
  noStroke();
  fill(255);
  rect(213,325,26,13);
  fill(#FCD9B8);
  rect(218,338,18,12);//This outputs the right hand
  rect(100,338,18,12);//This outputs the left hand
  
  fill(#C13C3C);//This outputs the red part of the hat
  ellipse(173,220,60,60);
  fill(#D84A4A);
  ellipse(180,220,53,60);
  stroke(#D84A4A);
  line(202,220,202,250);
  stroke(#C13C3C);
  line(190,213,190,230);
  noStroke();
  fill(#EAEAEA);
  rect(140,220,60,10);//This outputs the grey stripe around the hat
  ellipse(200,248,30,30);//This outputs the pom pom of the hat  
  
  fill(#E8AA70);
  ellipse(144,240,15,20);//This outputs the left ear
  ellipse(195,240,15,20);//This outputs the right ear
  fill(#FCD9B8);//This outputs the head
  rect(157,230,38,40);
  fill(#EDC5A0);
  rect(145,230,12,40);
  
  fill(#D3C8C6);//This outputs the beard
  ellipse(170,280,62,50);
  fill(255);
  ellipse(177,280,55,50);
  
  fill(#B97C42);
  ellipse(160,243,7,9);//This outputs the left eye
  ellipse(180,243,7,9);//This outputs the right eye
  
  fill(0,0,0,0);//This outputs the nose
  stroke(#D39E6D);
  line(166,255,174,255);
  stroke(#B97C42);
  strokeWeight(7);
  arc(171,260,20,20,radians(45),radians(135));
  noStroke();

  //outputs the ground
  fill(#EDFAFF);
  ellipse(525,500,900,200);
  fill(255);
  ellipse(150,600,600,400);
}

void phrase(){
  fill(#F73C32);
  PFont font;//Declares the variable
  font = loadFont("CooperBlack-48.vlw");
  textFont(font);
  textSize(65);
  if(textX==830){//When the x value of the text is too far off the screen to the right, x is set to -420, so it seems like they are moving from left to right
    textX=-420;
  }
  text("Merry",textX,80);
  fill(#FF7D76);
  text("Merry",3+textX,77);
  fill(#F73C32);
  text("Christmas!",50+textX,150);
  fill(#FF7D76);
  text("Christmas!",53+textX,147);
  fill(#31C91A);
  textSize(18);
  text("From: Olivia Chan:)",15,485);
}
