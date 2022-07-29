class MatchingBrackets {
  bool isPaired(String brackets) {
    List<String> stack = [];
    Map<String, String> brakcetPair = {"(": ")", "[": "]", "{": "}"};

    return brackets.split('').fold(stack, (List<String> prev, String el) {
      if (brakcetPair.keys.contains(el)) {
        prev.add(el);
      }
      if (brakcetPair.values.contains(el)) {
        if (prev.isNotEmpty && brakcetPair[prev.last] == el) {
          prev.removeLast();
        } else {
          prev.add(el);
        }
      }

      return prev;
    }).isEmpty;
  }
}
