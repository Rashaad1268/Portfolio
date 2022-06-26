import 'package:flutter/material.dart';
import 'package:frontend/widgets/widgets.dart';


class DesktopLayout extends StatelessWidget {
  final scrollController = ScrollController();
  DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double paddingSize = size.width / 50;

    return Scaffold(
      appBar: AppBar(title: const AppBarTitleButton(), actions: appBarActionIcons),
      body: Row(
        children: [
          DesktopSideBar(
              width: size.width / 4, scrollController: scrollController),
          Expanded(
            child: Padding(
              padding: EdgeInsets.zero,
              child: ListView(controller: scrollController, children: [
                const AboutMeSection(),
                Padding(
                  padding: EdgeInsets.only(left: paddingSize, top: paddingSize, bottom: paddingSize),
                  child: ProjectsList(
                    cardWidth: 350,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: paddingSize),
                  child: TechnologiesSecion(
                    cardWidth: 250,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: paddingSize),
                  child: const RoadMap(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: paddingSize),
                  child: const Footer(),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
