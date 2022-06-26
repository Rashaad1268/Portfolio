import 'package:flutter/material.dart';
import 'package:frontend/widgets/widgets.dart';

class MobileLayout extends StatelessWidget {
  final scrollController = ScrollController();
  MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const AppBarTitleButton(), actions: const [
        ChangeThemeButton(),
      ]),
      drawer: MobileDrawer(scrollController: scrollController),
      body: ListView(
        controller: scrollController,
        children: [
          const AboutMeSection(),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
            child: ProjectsList(
              cardWidth: 350,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TechnologiesSecion(
              cardWidth: 250,
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
