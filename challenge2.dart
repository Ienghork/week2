class Point {
  int x;
  int y;
  Point(this.x, this.y);
  String toString() {
    return " x=$x - y=$y";
  }
}

class Rectangle {
  Point topLeft;
  Point bottomRight;
  Rectangle(this.topLeft, this.bottomRight);
  int get width => bottomRight.x - topLeft.x;
  int get height => topLeft.y - bottomRight.y;
  int get area => height * width;

  String toString() {
    return " Width = $width, Height = $height, Area = $area";
  }
}

void main() {
  Point p1 = Point(3, 9);
  Point p2 = Point(5, 6);
  Rectangle(p1, p2);
  print(Rectangle(p1, p2));
}
