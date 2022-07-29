class BeerSong {
  List<String> recite(int bottle, int times) {
    List<String> ret = <String>[];

    while (times != 0) {
      if (bottle == 0) {
        ret.add(
            'No more bottles of beer on the wall, no more bottles of beer.');
        ret.add(
            'Go to the store and buy some more, 99 bottles of beer on the wall.');
        break;
      }
      ret.add('${s(bottle)} of beer on the wall, ${s(bottle)} of beer.');
      bottle--;
      ret.add(
          'Take ${(bottle == 0) ? 'it' : 'one'} down and pass it around, ${s(bottle)} of beer on the wall.');
      times--;
      if (times != 0) {
        ret.add('');
      }
    }

    return ret;
  }

  String s(int n) {
    switch (n) {
      case 0:
        return 'no more bottles';
      case 1:
        return '$n bottle';
      default:
        return '$n bottles';
    }
  }
}
