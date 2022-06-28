import 'package:flutter/material.dart';

class SideBarTile extends StatelessWidget {
  final String title;
  final GlobalKey scrollTo;
  final bool popNavigator;
  const SideBarTile(
      {Key? key,
      required this.title,
      required this.scrollTo,
      this.popNavigator = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (popNavigator) {
            Navigator.pop(context);
          }
          if (scrollTo.currentContext != null) {
            Scrollable.ensureVisible(scrollTo.currentContext!,
                duration: const Duration(milliseconds: 500));
          }
        });
      },
    );
  }
}

class DesktopSideBar extends StatelessWidget {
  final List<Map> tiles;
  const DesktopSideBar({
    Key? key,
    required this.width,
    required this.scrollController,
    required this.tiles,
  }) : super(key: key);

  final double width;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      width: width, // Take up 25% of the screen
      child: Column(
          children: tiles
              .map((t) => SideBarTile(title: t['title'], scrollTo: t['key']))
              .toList()),
    );
  }
}

class MobileDrawer extends StatelessWidget {
  final ScrollController scrollController;
  final List<Map> tiles;
  const MobileDrawer(
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
                  popNavigator: true,
                );
              }),
        ),
      ]),
    );
  }
}
