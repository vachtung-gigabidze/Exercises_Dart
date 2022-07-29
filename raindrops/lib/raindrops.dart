class Raindrops {
  Map<int, String> _dropSounds = {3: "Pling", 5: "Plang", 7: "Plong"};

  String convert(int drops) {
    String result = '';
    _dropSounds.forEach((factor, sound) {
      result = result + howSound(drops, factor, sound);
    });

    return result.isEmpty ? drops.toString() : result;
  }
}

String howSound(int drops, int factor, String sound) {
  return (drops % factor == 0) ? sound : '';
}
