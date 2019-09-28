// Generare al massimo 120 punti, superato questo limite cancellare
// gli ultimi elementi inseriti. (Sfruttare gli array per risolvere il problema)

Point p;
boolean pressed = false;
int limit = 120;
ArrayList<Point> points = new ArrayList<Point>();

void setup() {
  size(400, 400);
  frameRate(60);
  p = new Point(50, 50);
}

void draw() {
  background(255);

  for (int i = 0; i < points.size(); i++) {
    Point point = points.get(i);

    if (pressed) {
      point.y = (point.y + 1) % height;
      points.set(i, point);
    }
    // Draw point
    point.draw();
  }
}

void mouseMoved() {
  p.movePoint(mouseX, mouseY);
  clonePoint(p);
}

void mousePressed() {
  if (pressed) {
    pressed = false;
  } else {
    pressed = true;
  }
}

void clonePoint(Point p) {
  try {
    if (points.size() > limit) points.remove(0);

    points.add((Point) p.clone());
  } 
  catch(CloneNotSupportedException e) {
  }
}
