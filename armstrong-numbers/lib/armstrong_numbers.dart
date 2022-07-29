class ArmstrongNumbers {
  bool isArmstrongNumber(int num) {
    return num ==
        num.toString().split('').fold(
            0,
            (int pre, String el) =>
                pre + pow(int.parse(el), num.toString().length));
  }

  int pow(int num, int p) {
    if (p == 0) {
      return 1;
    }
    return num * pow(num, p - 1);
  }
}
