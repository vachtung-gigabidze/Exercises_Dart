class Pangram {
  bool isPangram(String words) {
    if (words.isEmpty) {
      return false;
    }
    words = words.toLowerCase();
    String letter = "zxcvbnmasdfghjklqwertyuiop";
    final r = letter.split('').map((e) => words.contains(e));
    return r.every((element) => element == true);
  }
}
