class Spaceship extends Floater  
{   
    //your code here
    public Spaceship() {
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
      myColor = color(255);
      myCenterX = 200;
      myCenterY = 200;
      myXspeed = 1;
      myYspeed = 1;
      myPointDirection = PI;
    }
    public void setXspeed(double x) {
      myXspeed = x;
    }
    public void setYspeed(double y) {
      myYspeed = y;
    }
    public void getCenterY(int y) {
      myCenterY = y;
    }
    public void getCenterX(int x) {
      myCenterY = x;
    }
    public void hyperspace() {
      myCenterX = Math.random()*400;
      myCenterY = Math.random()*400;
      myPointDirection = Math.random()*2*PI;
      myXspeed = 1;
      myYspeed = 1;
    }
}
