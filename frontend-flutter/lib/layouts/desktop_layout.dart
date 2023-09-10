import 'package:flutter/material.dart';
import 'package:frontend/widgets/widgets.dart';

class DesktopLayout extends StatelessWidget {
  final scrollController = ScrollController();
  final aboutMeKey = GlobalKey();
  final projectsKey = GlobalKey();
  final technologiesKey = GlobalKey();
  final timelineKey = GlobalKey();
  DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double paddingSize = size.width / 50;

    return Scaffold(
      appBar:
          AppBar(title: const AppBarTitleButton(), actions: appBarActionIcons),
      drawer: AppDrawer(
        scrollController: scrollController,
        tiles: [
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
        ],
      ),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          AboutMeSection(key: aboutMeKey),
          Padding(
            padding: EdgeInsets.only(
                left: paddingSize, top: paddingSize, bottom: paddingSize),
            child: ProjectsList(
              key: projectsKey,
              cardWidth: 350,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: paddingSize),
            child: TechnologiesSecion(
              key: technologiesKey,
              cardWidth: 250,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: paddingSize),
            child: TimeLine(
              key: timelineKey,
              width: 1000,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: paddingSize),
            child: const Footer(),
          ),
        ]),
      ),
    );
  }
}
