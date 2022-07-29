class Hamming {
  int distance(String s1, String s2) {
    if (s1.isEmpty && s2.isEmpty) return 0;

    if (s1.isEmpty || s2.isEmpty)
      throw ArgumentError('no strand must be empty');

    if (s1.length != s2.length)
      throw ArgumentError('left and right strands must be of equal length');

    return d(s1, s2);
  }

  int d(String s1, String s2) {
    if (s1.isEmpty) return 0;
    return (s1[0] == s2[0] ? 0 : 1) + d(s1.substring(1), s2.substring(1));
  }
}
