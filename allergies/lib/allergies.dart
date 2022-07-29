// import 'dart:developer';

class Allergies {
  // Map<String, int> tested = {
  //   "eggs": 1,
  //   "peanuts": 2,
  //   "shellfish": 4,
  //   "strawberries": 8,
  //   "tomatoes": 16,
  //   "chocolate": 32,
  //   "pollen": 64,
  //   "cats": 128
  // };
  Map<int, String> tested2 = {
    1: "eggs",
    2: "peanuts",
    4: "shellfish",
    8: "strawberries",
    16: "tomatoes",
    32: "chocolate",
    64: "pollen",
    128: "cats"
  };

  bool allergicTo(String s, int n) {
    n = n % 256;

    final p = list(n);
    if (p.indexOf(s) >= 0) {
      return true;
    }
    return false;
  }

  List<String> list(int n) {
    n = n % 256;
    List<String> p = [];

    [128, 64, 32, 16, 8, 4, 2, 1].forEach((int el) {
      if (n >= el && n != 0) {
        n = n - el;

        p.add(tested2[el]!);
      }
    });

    return List.from(p.reversed);
  }
}
