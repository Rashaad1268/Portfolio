import 'package:flutter/material.dart';

class SideBarTile extends StatelessWidget {
  final String title;
  final GlobalKey scrollTo;
  const SideBarTile({
    Key? key,
    required this.title,
    required this.scrollTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pop(context);
          if (scrollTo.currentContext != null) {
            Scrollable.ensureVisible(scrollTo.currentContext!,
                duration: const Duration(milliseconds: 500));
          }
        });
      },
    );
  }
}

class AppDrawer extends StatelessWidget {
  final ScrollController scrollController;
  final List<Map> tiles;
  const AppDrawer(
      {Key? key, required this.scrollController, required this.tiles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        DrawerHeader(
          child: Row(
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back)),
              const Padding(
                  padding: EdgeInsets.only(left: 8), child: Text('Sections')),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: tiles.length,
              itemBuilder: (context, index) {
                final tile = tiles[index];
                return SideBarTile(
                  title: tile['title'],
                  scrollTo: tile['key'],
                );
              }),
        ),
      ]),
    );
  }
}
