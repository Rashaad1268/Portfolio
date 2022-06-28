import 'package:flutter/material.dart';
import 'package:frontend/utils/utils.dart';
import 'package:frontend/widgets/widgets.dart';

class ProjectsList extends StatelessWidget {
  final double cardWidth;
  final projectsScrollController = ScrollController();
  ProjectsList({Key? key, this.cardWidth = 250}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Projects',
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(fontWeight: FontWeight.w500)),
        Scrollbar(
          controller: projectsScrollController,
          child: SingleChildScrollView(
            controller: projectsScrollController,
            scrollDirection: Axis.horizontal,
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: projectsData
                    .map((e) => ProjectCard(
                          e,
                          width: cardWidth,
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
