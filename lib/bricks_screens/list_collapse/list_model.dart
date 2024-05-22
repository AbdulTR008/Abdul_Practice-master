class ListModel {
  ListModel(
      {required this.title, this.tiles = const [], this.subTiles = const []});

  String title;
  List<String> tiles;
  List<String> subTiles;
}
