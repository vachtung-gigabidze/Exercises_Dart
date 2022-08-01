bool isValid(String s) {
  return isMatch(s) ? verifier(parse(s)) : false;
}

bool isMatch(String s) {
  RegExp re = RegExp(r'^(\d{1}-?\d{3}-?\d{5}-?[\d|X]{1})$');
  return re.hasMatch(s);
}

List<int> parse(String s) {
  s = s.replaceAll('-', '');
  return s.split('').map((e) {
    e = e.replaceAll('X', '10');
    return int.parse(e);
  }).toList();
}

bool verifier(List<int> ar) {
  return ar
              .asMap()
              .map<int, int>(
                  (key, value) => MapEntry(key, value * (ar.length - (key))))
              .values
              .reduce((value, element) => value + element) %
          11 ==
      0;
}
