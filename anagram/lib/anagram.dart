class Anagram {
  List<String> findAnagrams(String word, List<String> candidates) {
    final w = word.toLowerCase().split('');
    w.sort();

    return candidates
        .map((candidate) {
          final c = candidate.toLowerCase().split('');
          c.sort();
          if (c.toString() == w.toString() &&
              word.toLowerCase() != candidate.toLowerCase()) {
            return candidate;
          } else {
            return "";
          }
        })
        .where((element) => element != "")
        .toList();
  }
}
