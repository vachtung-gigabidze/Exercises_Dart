class Diamond {
  List<String> rows(String l) {
    final a = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

    final index = a.indexOf(l) + 1;
    final b = a.substring(0, index);

    final diamondHead =
        b.split('').map((e) => drawRow(index, e, a.indexOf(e) + 1)).toList();

    if (diamondHead.length == 1) {
      return diamondHead;
    }
    var diamondBottom = (diamondHead.reversed).toList();

    diamondHead.removeLast();

    return diamondHead.toList() + diamondBottom.toList();
  }

  String space(int n) {
    return Iterable.generate(n, (_) => " ").join('');
  }

  String drawRow(int max, String l, int index) {
    if (index == 1) {
      return '${space(max - index)}$l${space(max - index)}';
    }

    return '${space(max - index)}$l${space(index * 2 - 3)}$l${space(max - index)}';
  }
}
