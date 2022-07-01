import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/utils/utils.dart';
import 'package:frontend/widgets/cards.dart';
import 'package:url_launcher/url_launcher.dart';

class Section extends StatelessWidget {
  final Widget child;
  final BoxDecoration decoration;
  final EdgeInsets? margin;
  const Section(
      {Key? key,
      required this.child,
      this.margin,
      this.decoration = const BoxDecoration()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double marginSize = MediaQuery.of(context).size.width / 50;
    return Container(
        margin: margin ??
            EdgeInsets.only(
                top: marginSize, left: marginSize, right: marginSize),
        decoration: decoration.copyWith(
            color: decoration.color ?? Theme.of(context).colorScheme.background,
            borderRadius: decoration.borderRadius ?? BorderRadius.circular(20)),
        child: child);
  }
}

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(children: [
              Text('Hey there!',
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(fontWeight: FontWeight.bold)),
              Text(
                'My name is Rashaad',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'I am a student',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'From Sri Lanka',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height / 10),
            decoration: BoxDecoration(
                color: Theme.of(context).focusColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50)),
            child: const CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('images/photo.jpeg'),
            ),
          ),
        ],
      ),
    );
  }
}

class TechnologiesSecion extends StatelessWidget {
  final double cardWidth;
  const TechnologiesSecion({required Key key, required this.cardWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Technologies I know',
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(fontWeight: FontWeight.w500)),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicHeight(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: technologiesData
                  .map((e) => TechnologyCard(
                      width: cardWidth,
                      icon: e['icon'],
                      title: e['name'],
                      child: Text(e['description'])))
                  .toList()),
        ),
      )
    ]);
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  Widget getIcon(BuildContext context, IconData data, {bool isFaIcon = true}) {
    if (isFaIcon) {
      return FaIcon(
        data,
        size: Theme.of(context).textTheme.headline6!.fontSize!,
      );
    }
    return Icon(data);
  }

  @override
  Widget build(BuildContext context) {
    final footerTextStyle = Theme.of(context).textTheme.bodySmall!;
    final footerTitleStyle = Theme.of(context).textTheme.headline6;
    return Container(
      color: Theme.of(context).colorScheme.background.withOpacity(0.7),
      child: DefaultTextStyle(
        style: footerTextStyle,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              FooterSection(
                children: [
                  Text(
                    'Links',
                    style: footerTitleStyle,
                  ),
                  FooterLinkWithIcon(
                    icon: getIcon(
                      context,
                      FontAwesomeIcons.github,
                    ),
                    url: 'https://github.com/Rashaad1268/Portfolio',
                    child: const Text('Source Code '),
                  ),
                ],
              ),
              FooterSection(
                children: [
                  Text(
                    'Socials',
                    style: footerTitleStyle,
                  ),
                  FooterLinkWithIcon(
                      url: githubLink,
                      icon: getIcon(context, FontAwesomeIcons.github),
                      child: const Text('GitHub ')),
                  FooterLinkWithIcon(
                      url: twitterLink,
                      icon: getIcon(context, FontAwesomeIcons.twitter),
                      child: const Text('Twitter ')),
                  FooterLinkWithIcon(
                      url: discordLink,
                      icon: getIcon(context, FontAwesomeIcons.discord),
                      child: const Text('Discord ')),
                  FooterLinkWithIcon(
                      url: youtubeLink,
                      icon: getIcon(context, FontAwesomeIcons.youtube),
                      child: const Text('YouTube ')),
                  FooterLinkWithIcon(
                      url: redditLink,
                      icon: getIcon(context, FontAwesomeIcons.redditAlien),
                      child: const Text('Reddit ')),
                ],
              ),
              FooterSection(
                children: [
                  Text(
                    'Tools Used',
                    style: footerTitleStyle,
                  ),
                  FooterLinkWithIcon(
                    url: 'https://flutter.dev/',
                    icon: getIcon(context, FontAwesomeIcons.uikit),
                    child: const Text('Flutter '),
                  ),
                  FooterLinkWithIcon(
                    url: 'https://fontawesome.com/',
                    icon: getIcon(context, FontAwesomeIcons.fontAwesome),
                    child: const Text('FontAwesome '),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  final List<Widget> children;
  const FooterSection({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children);
  }
}

class FooterLinkWithIcon extends StatelessWidget {
  final Widget child;
  final Widget icon;
  final String? url;
  const FooterLinkWithIcon(
      {Key? key, required this.child, required this.icon, this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (url != null) {
          if (!await launchUrl(Uri.parse(url!))) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Failed to launch url')));
          }
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [child, icon],
      ),
    );
  }
}
