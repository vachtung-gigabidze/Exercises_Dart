class RnaTranscription {
  Map<String, String> _transcribed = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'};

  String toRna(String dnk) {
    return dnk.split('').map((adenine) => _transcribed[adenine]).join('');
  }
}
