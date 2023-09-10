import 'package:flutter/material.dart';
import 'package:frontend/widgets/widgets.dart';

class TimeLine extends StatelessWidget {
  final double width;
  const TimeLine({Key? key, required this.width}) : super(key: key);

  Widget getDivider(color) {
    return Container(
      width: width / 80,
      height: width / 15,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(3)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final timelineDividerColor = Theme.of(context).backgroundColor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text('My Timeline',
                style: Theme.of(context).textTheme.headline4)),
        TimelineCard(
          2016,
          'I started my journey with Scratch',
          width: width,
        ),
        getDivider(timelineDividerColor),
        TimelineCard(
          2017,
          'Continued learning Scratch',
          width: width,
        ),
        getDivider(timelineDividerColor),
        TimelineCard(
          2018,
          'I did not focus on programming rather I was focusing on studies',
          width: width,
        ),
        getDivider(timelineDividerColor),
        TimelineCard(
          2019,
          'Traveling around the world and studying',
          width: width,
        ),
        getDivider(timelineDividerColor),
        TimelineCard(
          2020,
          'During the quarantine period I was bored so I decided to learn Python',
          width: width,
        ),
        getDivider(timelineDividerColor),
        TimelineCard(
          2021,
          'Started building projects using Django like the YouTube clone and the Chat App',
          width: width,
        ),
        getDivider(timelineDividerColor),
        TimelineCard(
          2022,
          'Learning new technologies like Flutter and Rust',
          width: width,
        ),
      ],
    );
  }
}
