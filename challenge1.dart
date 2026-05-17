class Point {
  int x = 0;
  int y = 0;

  Point({required this.x, required this.y}) {}

  void translate(int deltaX, int deltaY) {
    // TODO
    int dx = x + deltaX;
    int dy = y + deltaY;
    print("Print the translate of X number is : ${dx}");
    print("Print the translate of Y number is : ${dy}");
  }
}

void main() {
  Point p1 = Point(x: 10, y: 20);
  p1.translate(15, 25);
}
