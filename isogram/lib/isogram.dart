class Isogram {
  bool isIsogram(String word) {
    word = word.replaceAll(RegExp(r"\W"), '');
    return word.length == word.toLowerCase().split('').toSet().length;
  }
}
