class BinarySearchTree {
  late Tree root;

  BinarySearchTree(String s) {
    root = Tree();
    root.data = s;
  }
  void insert(String value) {
    root.insert(value);
  }

  List<String> get sortedData {
    return root.sortedData();
  }
}

class Tree {
  Tree? left;
  Tree? right;
  String? data;
  Tree({this.left = null, this.right = null, this.data = null});

  List<String> sortedData() {
    List<String> ret = [data!];
    if (left != null) {
      ret = left!.sortedData() + ret;
    }
    if (right != null) {
      ret = ret + right!.sortedData();
    }

    return ret;
  }

  void insert(String value) {
    if (data == null) {
      data = value;
    } else {
      if (int.parse(data!) >= int.parse(value)) {
        if (left == null) {
          left = Tree();
        }
        left!.insert(value);
      } else {
        if (right == null) {
          right = Tree();
        }
        right!.insert(value);
      }
    }
  }
}
