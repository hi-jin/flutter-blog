abstract class PostAsset {
  final String name;
  final PostDirectory? parent;

  PostAsset({
    required this.name,
    this.parent,
  });

  String get path {
    if (parent == null) return name;

    return "${parent!.path}/$name";
  }
}

class PostDirectory extends PostAsset {
  final List<PostAsset> children;

  PostDirectory({
    required super.name,
    super.parent,
    required this.children,
  });

  @override
  String toString() {
    return "$name( ${children.map((e) => e.toString()).join(", ")} )";
  }

  void putAsset(String path) {
    final endsWithDelim = path.endsWith("/");
    final paths = path.split("/");

    if (paths.length < 2) return;

    final current = paths[0];
    final rem = paths.sublist(1).join("/") + (endsWithDelim ? "/" : "");
    final next = paths[1];
    final nextIsFile = paths.length == 2 && !endsWithDelim;

    if (current != name) return;

    if (nextIsFile) {
      children.add(PostFile(name: next));
    } else {
      for (final child in children) {
        if (child.name == next && child is PostDirectory) {
          child.putAsset(rem);
          return;
        }
      }
      final child = PostDirectory(name: next, children: []);
      children.add(child);
      child.putAsset(rem);
    }
  }
}

class PostFile extends PostAsset {
  PostFile({
    required super.name,
    super.parent,
  });

  @override
  String toString() => name;
}
