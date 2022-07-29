class WordCount {
  Map<String, int> countWords(String words) {
    Map<String, int> r = {};

    words = words.toLowerCase();
    words = words.replaceAll(RegExp(r'\n\t'), "");

    RegExp exp = new RegExp(r"(\b[^\s\,|^\.]+\b)");

    Iterable<Match> matches = exp.allMatches(words);

    matches.forEach((m) => print(m.group(0)));

    matches.forEach((m) {
      if (r.containsKey(m.group(0))) {
        r[m.group(0)!] = (r[m.group(0)] as int) + 1;
      } else {
        r[m.group(0)!] = 1;
      }
    });

    return r;
  }
}
