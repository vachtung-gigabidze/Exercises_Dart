class Bob {
  String response(String request) {
    request = request.trim();

    if (request.isEmpty) {
      return "Fine. Be that way!";
    }

    if (_isLetter(request.toLowerCase())) {
      if (request.toUpperCase() == request) {
        if (request.split('').last == '?') {
          return "Calm down, I know what I\'m doing!";
        } else {
          return "Whoa, chill out!";
        }
      }
    }

    if (request.split('').last == '?') {
      return "Sure.";
    }

    return "Whatever.";
  }

  RegExp _isLetterRegExp = RegExp(r'[a-z]');

  bool _isLetter(String letter) {
    return _isLetterRegExp.hasMatch(letter);
  }
}
