class PascalsTriangle {
  List<List<int>> rows(int row) {
    List<List<int>> r = [];

    if (row > 0) {
      r.add([1]);
      for (int i = 0; i < row - 1; i++) {
        r.add(nextRow(r.last));
      }
    }
    return r;
  }

  List<int> nextRow(List<int> prev) {
    List<int> r = [1];
    for (int i = 0; i < prev.length - 1; i++) {
      r.add(prev[i] + prev[i + 1]);
    }
    r.add(1);
    return r;
  }
}
