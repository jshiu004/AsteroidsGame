public class Asteroid extends Floater {
  private double spdofrot;
  public Asteroid() {
    spdofrot = 3.0*(int)(Math.random()*2) - 1;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myXspeed = 0.5;
    myYspeed = 0.5;
    myColor = 200;
    myPointDirection = PI;
    myCenterX = Math.random()*400;
    myCenterY = Math.random()*400;
  }
  void move() {
    turn(spdofrot);
    super.move();
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
