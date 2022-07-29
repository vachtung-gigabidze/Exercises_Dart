import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int num) {
    int r =
        List<int>.generate(num + 1, (index) => index).fold(0, (p, e) => p + e);
    return pow(r, 2) as int;
  }

  int sumOfSquares(int num) {
    return List<int>.generate(num + 1, (index) => index * index)
        .fold(0, (p, e) => p + e);
  }

  int differenceOfSquares(int num) {
    return (squareOfSum(num) - sumOfSquares(num)).abs();
  }
}
