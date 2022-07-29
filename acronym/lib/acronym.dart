class Acronym {
  // Put your code here
  String abbreviate(String words) {
    final re = RegExp(r'\s|-|_');
    final w = words
        .split(re)
        .toList()
        .where((element) => element.isNotEmpty)
        .map((element) => element[0].toUpperCase());
    final s = w.join('');
    return s;
  }
}
