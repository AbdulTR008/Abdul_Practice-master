import 'package:flutter/material.dart';

import 'package:abdebricks/bricks_screens/list_collapse/list_model.dart';
import 'package:abdebricks/bricks_screens/list_collapse/model_data.dart';

class CollapseListScreen extends StatefulWidget {
  const CollapseListScreen({super.key});

  @override
  State<CollapseListScreen> createState() => _CollapseListScreenState();
}

class _CollapseListScreenState extends State<CollapseListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Collapse'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Card(
                child: ExpansionTile(
                  collapsedIconColor: Colors.red,
                  childrenPadding: const EdgeInsets.only(left: 25),
                  title: Text(languages[index].title),
                  children: [
                    ...languages[index]
                        .tiles
                        .map((tiles) => Tiles(
                              tiles: tiles,
                              index: index,
                            ))
                        .toList()
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class Tiles extends StatelessWidget {
  Tiles({
    this.tiles,
    this.index,
    super.key,
  });
  String? tiles;
  int? index;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.only(left: 25),
      trailing: languages[index!].subTiles.isEmpty ? Text('') : null,
      title: Text(tiles.toString()),
      children: [
        ...languages[index!].subTiles.map(
              (subTiles) => SubTiles(
                subTiles: subTiles,
              ),
            )
      ],
    );
  }
}

class SubTiles extends StatelessWidget {
  SubTiles({super.key, this.subTiles});
  String? subTiles;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: Text(''),
      title: Text(subTiles.toString()),
    );
  }
}
