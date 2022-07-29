class Triangle {
  bool equilateral(num a, num b, num c) {
    return (a == b && b == c) && (a + b + c) != 0;
  }

  bool isosceles(num a, num b, num c) {
    return (a == b || b == c || a == c) && isTriangle(a, b, c);
  }

  bool scalene(num a, num b, num c) {
    return !((a == b || b == c)) && isTriangle(a, b, c);
  }

  bool isTriangle(num a, num b, num c) {
    return a + b > c && a + c > b && c + b > a;
  }
}
