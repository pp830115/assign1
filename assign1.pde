/* please implement your assign1 code in this file. */
PImage fighter;
PImage treasure;
PImage hp;
PImage enemy;
PImage bg1;
PImage bg2;
int x;
int RX,RY;
int bg1X;
int bg2X;
int hpX;
void setup () {
  size(640,480) ;  // must use this size.
  // your code
  x=0;
  bg1X=0;
  bg2X=640;
  hpX=floor(random(40,199));
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  treasure = loadImage("img/treasure.png");
  RX=floor(random(550));
  RY=floor(random(100,400));
  hp = loadImage("img/hp.png");
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  
  
}

void draw() {
  // your code
  image(bg1,bg1X,0);
  image(bg2,bg2X,0);
  bg1X-=2;  
  bg2X-=2;
  if(bg1X==-640)
    bg1X=640;
  if(bg2X==-640)
    bg2X=640;
  stroke(#ff0000);
  fill(#ff0000);
  rect(20,15,hpX,20);
  image(enemy,x,100);
  x+=5;
  x%=640;
  image(fighter,580,220);
  image(treasure,RX,RY);
  image(hp,10,10);
}
