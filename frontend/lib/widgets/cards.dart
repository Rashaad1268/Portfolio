import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/widgets/buttons.dart';
import 'package:frontend/widgets/projects_list.dart';

final hoverTransform = Matrix4.identity()..translate(1, -5, 0);

class ProjectCard extends StatefulWidget {
  final Map projectData;
  final double? height;
  final double width;
  const ProjectCard(this.projectData,
      {Key? key, this.height, required this.width})
      : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovering = false;

  setHoveringStatus(bool status) {
    setState(() {
      isHovering = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: isHovering ? widget.width + 10 : widget.width,
      child: MouseRegion(
        onEnter: (e) => setHoveringStatus(true),
        onExit: (e) => setHoveringStatus(false),
        child: GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => ProjectDetail(
                      widget.projectData,
                    ));
          },
          onLongPress: () async {
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
            duration: const Duration(milliseconds: 600),
            curve: Curves.fastOutSlowIn,
            transform: isHovering ? hoverTransform : Matrix4.identity(),
            child: Card(
              elevation: isHovering ? 50 : null,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: CachedNetworkImage(
                        imageUrl: widget.projectData['image_url'],
                        fit: BoxFit.fill,
                        placeholder: (context, _) =>
                            const LinearProgressIndicator()),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.projectData['name'],
                            style: Theme.of(context).textTheme.headline6),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0, left: 8.0, bottom: 8.0),
                        child: Text(widget.projectData['description'] ?? ''),
                      )),
                  Row(
                    children: [
                      if ((widget.projectData['github_url'] ?? '').isNotEmpty)
                        LinkIcon(
                          icon: const FaIcon(FontAwesomeIcons.github),
                          url: widget.projectData['github_url'],
                        ),
                      if (widget.projectData['site'] != null)
                        LinkIcon(
                          icon: const Icon(Icons.web),
                          url: widget.projectData['site'],
                        ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
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
    return SizedBox(
      width: width,
      child: Card(
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
      ),
    );
  }
}
