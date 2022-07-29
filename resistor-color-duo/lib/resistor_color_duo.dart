class ResistorColorDuo {
  final colors = <String>[
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  int value(List<String> v) {
    return int.parse(v
        .take(2)
        .fold("", (String p, String e) => (p + colors.indexOf(e).toString())));
  }
}
