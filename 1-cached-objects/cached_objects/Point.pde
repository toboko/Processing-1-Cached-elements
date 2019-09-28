public class Point implements Cloneable{
  float x, y;
  color green = #34a832;
  
  Point(float xi, float yi) {
    x = xi;
    y = yi;
  }
  
  void movePoint(float xi, float yi){
    x = xi;
    y = yi;
  }
  
  void draw() {
    fill(green, 50); 
    circle(x,y,10);
  }
  
  @Override
  protected Object clone() throws CloneNotSupportedException {
      return super.clone();
  }
}
