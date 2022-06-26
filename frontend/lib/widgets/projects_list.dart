import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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


class ProjectDetail extends StatelessWidget {
  final Map projectData;
  const ProjectDetail(this.projectData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Dialog(
      insetPadding: EdgeInsets.symmetric(
          vertical: size.height / 6, horizontal: size.width / 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: CachedNetworkImage(
                        imageUrl: projectData['image_url'],
                        fit: BoxFit.scaleDown,
                        placeholder: (context, _) =>
                            const LinearProgressIndicator()),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const FaIcon(FontAwesomeIcons.circleXmark)),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(projectData['name'],
                      style: Theme.of(context).textTheme.displayMedium),
                )),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
                child: Text(
                    projectData['long_description'] ??
                        projectData['description'] ??
                        '',
                    style: Theme.of(context).textTheme.headline4),
              ),
            )
          ],
        ),
      ),
    );
  }
}
