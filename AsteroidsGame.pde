//your variable declarations here
Star [] sue;
Spaceship bob;
public void setup() 
{
  //your code here
  size(400,400);
  background(0);
  bob = new Spaceship();
  sue = new Star[100];
  for(int i = 0; i < sue.length; i++) {
    sue[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  //your code here
  for(int i = 0; i < sue.length; i++) {
    sue[i].show();
  }
  if(keyPressed) {
   if(key == 'a' || key == 'A') {
     bob.turn(-10);
   }
   if(key == 'd' || key == 'D') {
     bob.turn(10);
   }
   if(key == 'w' || key == 'W') {
     bob.accelerate(0.6);
   }
   if(key == 's' || key == 'S') {
     bob.accelerate(-0.6);
   }
   if(key == ' ') {
     bob.hyperspace();
   }
  }
  bob.move();
  bob.show();
}
