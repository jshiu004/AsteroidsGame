//your variable declarations here
Star [] sue;
Spaceship bob;
ArrayList <Asteroid> tom;
public void setup() 
{
  //your code here
  size(400,400);
  background(0);
  bob = new Spaceship();
  sue = new Star[100];
  tom = new ArrayList <Asteroid>();
  for(int i = 0; i < 10; i++) {
    tom.add(new Asteroid());
  }
  for(int i = 0; i < sue.length; i++) {
    sue[i] = new Star();
  }
  for(int i = 0; i < 5; i++) {
  }
}
public void draw() 
{
  background(0);
  //your code here
  for(int i = 0; i < sue.length; i++) {
    sue[i].show();
  }
  bob.move();
  bob.show();
  for(int i = 0; i < tom.size(); i++) {
    tom.get(i).move();
    tom.get(i).show();
    float d = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)tom.get(i).getCenterX(), (float)tom.get(i).getCenterY());
    if(d < 10) {
      tom.remove(i);
    }
  }
}
  public void keyPressed() {
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
