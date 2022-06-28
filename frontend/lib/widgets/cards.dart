import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/widgets/widgets.dart';

// final hoverTransform = Matrix4.identity()..translate(1.5, -5, 3);
final hoverTransform = Matrix4.identity()..translate(1.5, -10, 3);

class HoverCard extends StatefulWidget {
  final double? height;
  final double width;
  final Widget child;
  const HoverCard(
      {Key? key, required this.width, this.height, required this.child})
      : super(key: key);

  @override
  State<HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool isHovering = false;

  setHoveringStatus(bool status) {
    setState(() {
      isHovering = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: MouseRegion(
          onEnter: (e) => setHoveringStatus(true),
          onExit: (e) => setHoveringStatus(false),
          child: GestureDetector(
              onTap: () async {
                if (isHovering) {
                  setHoveringStatus(false);
                } else {
                  setHoveringStatus(true);
                  await Future.delayed(const Duration(seconds: 1), () {
                    setHoveringStatus(false);
                  });
                }
              },
              child: AnimatedContainer(
                  height: widget.height,
                  width: isHovering ? widget.width + 20 : widget.width,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.fastOutSlowIn,
                  transform: isHovering ? hoverTransform : Matrix4.identity(),
                  child: Card(
                      elevation: isHovering ? 30 : 0, child: widget.child)))),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Map projectData;
  final double? height;
  final double width;
  const ProjectCard(this.projectData,
      {Key? key, this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverCard(
      height: height,
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(projectData['name'],
                    style: Theme.of(context).textTheme.headline4),
              )),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
                child: Text(projectData['description'] ?? ''),
              )),
          Row(
            children: [
              if ((projectData['github_url'] ?? '').isNotEmpty)
                LinkIcon(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  url: projectData['github_url'],
                ),
              if (projectData['site'] != null)
                LinkIcon(
                  icon: const Icon(Icons.web),
                  url: projectData['site'],
                ),
            ],
          )
        ],
      ),
    );
  }
}

class TechnologyCard extends StatelessWidget {
  final double width;
  final Widget icon;
  final String title;
  final Widget child;
  const TechnologyCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.child,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverCard(
      width: width,
      child: Column(children: [
        Padding(padding: const EdgeInsets.all(8), child: icon),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(title, style: Theme.of(context).textTheme.headline6),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
          child: child,
        )
      ]),
    );
  }
}

class TimelineCard extends StatelessWidget {
  final int year;
  final String description;
  final double width;
  const TimelineCard(this.year, this.description,
      {Key? key, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverCard(
      width: width,
      child: Wrap(
          alignment: WrapAlignment.spaceAround,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Section(
              margin: EdgeInsets.zero,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: width / 35,
                      width: width / 35,
                      decoration: const BoxDecoration(
                          color: Colors.orange, shape: BoxShape.circle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        year.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(description, style: Theme.of(context).textTheme.headline5)
          ]),
    );
  }
}
