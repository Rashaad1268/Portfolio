import 'package:flutter/material.dart';

class SideBarTile extends StatelessWidget {
  final String title;
  final void Function(BuildContext) onPress;
  const SideBarTile({Key? key, required this.title, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => onPress(context),
    );
  }
}

class DesktopSideBar extends StatelessWidget {
  const DesktopSideBar({
    Key? key,
    required this.width,
    required this.scrollController,
  }) : super(key: key);

  final double width;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      width: width, // Take up 25% of the screen
      child: Column(children: [
        SideBarTile(
          title: 'Option One',
          onPress: (context) {
            if (scrollController.hasClients) {
              scrollController.animateTo(
                  scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn);
            }
          },
        ),
        const Divider(),
        SideBarTile(
          title: 'Option Two',
          onPress: (context) {},
        ),
        const Divider(),
        SideBarTile(
          title: 'Option Three',
          onPress: (context) {},
        ),
        const Divider(),
        SideBarTile(
          title: 'Option Four',
          onPress: (context) {},
        ),
      ]),
    );
  }
}

class MobileDrawer extends StatelessWidget {
  final ScrollController scrollController;
  const MobileDrawer({Key? key, required this.scrollController})
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
        SideBarTile(
          title: 'Option One',
          onPress: (context) {
            if (scrollController.hasClients) {
              scrollController.animateTo(
                  scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeOut);
            }
          },
        ),
        const Divider(),
        SideBarTile(
          title: 'Option Two',
          onPress: (context) {},
        ),
        const Divider(),
        SideBarTile(
          title: 'Option Three',
          onPress: (context) {},
        ),
        const Divider(),
        SideBarTile(
          title: 'Option Four',
          onPress: (context) {},
        ),
      ]),
    );
  }
}
