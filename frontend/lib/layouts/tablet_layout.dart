import 'package:flutter/material.dart';
import 'package:frontend/widgets/widgets.dart';


class TabletLayout extends StatelessWidget {
  final scrollController = ScrollController();
  TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const AppBarTitleButton(), actions: appBarActionIcons),
      drawer: MobileDrawer(
        scrollController: scrollController,
      ),
      body: ListView(
        controller: scrollController,
        children: [
          const AboutMeSection(),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
            child: ProjectsList(
              cardWidth: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TechnologiesSecion(
              cardWidth: 200,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Footer(),
          ),
        ],
      ),
    );
  }
}
