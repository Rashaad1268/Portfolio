import 'package:flutter/material.dart';
import 'package:frontend/widgets/widgets.dart';

class TabletLayout extends StatelessWidget {
  final scrollController = ScrollController();
  final aboutMeKey = GlobalKey();
  final projectsKey = GlobalKey();
  final technologiesKey = GlobalKey();
  final timelineKey = GlobalKey();

  TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const AppBarTitleButton(), actions: appBarActionIcons),
      drawer: AppDrawer(scrollController: scrollController, tiles: [
        {
          'key': aboutMeKey,
          'title': 'About Me',
        },
        {
          'key': projectsKey,
          'title': 'Projects',
        },
        {
          'key': technologiesKey,
          'title': 'Technologies',
        },
        {
          'key': timelineKey,
          'title': 'Timeline',
        }
      ]),
      body: ListView(
        controller: scrollController,
        children: [
          AboutMeSection(key: aboutMeKey),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
            child: ProjectsList(
              key: projectsKey,
              cardWidth: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TechnologiesSecion(
              key: technologiesKey,
              cardWidth: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TimeLine(key: timelineKey, width: 650),
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
