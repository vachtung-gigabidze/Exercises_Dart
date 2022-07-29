import 'dart:math';

class Darts {
  int score(double a, double b) {
    double r = sqrt(a * a + b * b);

    if (r <= 1) {
      return 10;
    }
    if (r <= 5) {
      return 5;
    }
    if (r <= 10) {
      return 1;
    }
    return 0;
  }
}
