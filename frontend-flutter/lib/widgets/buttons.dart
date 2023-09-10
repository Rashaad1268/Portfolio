import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/utils.dart';

class ChangeThemeButton extends ConsumerWidget {
  const ChangeThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(isDarkThemeProvider);
    changeTheme() =>
        ref.read(isDarkThemeProvider.notifier).update((state) => !state);

    return GestureDetector(
      onTap: changeTheme,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).backgroundColor),
        child: Center(
          child: Row(children: [
            isDarkTheme
                ? const Icon(Icons.sunny)
                : const Icon(Icons.nightlight_rounded),
            Switch(
              onChanged: (val) => changeTheme(),
              value: isDarkTheme,
            ),
          ]),
        ),
      ),
    );
  }
}

class LinkIcon extends StatelessWidget {
  final Widget icon;
  final String url;
  final EdgeInsets padding;
  const LinkIcon(
      {Key? key,
      required this.icon,
      required this.url,
      this.padding = const EdgeInsets.symmetric(horizontal: 5)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: IconButton(
        onPressed: () async {
          if (!await launchUrl(Uri.parse(url))) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Failed to launch url')));
          }
        },
        splashColor: Colors.transparent,
        icon: icon,
      ),
    );
  }
}

class TwitterLinkButton extends ConsumerWidget {
  // Use a separate widget for the twitter link so that the value can be dynamically changed
  const TwitterLinkButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkThemeProvider);
    return LinkIcon(
        icon: FaIcon(FontAwesomeIcons.twitter,
            color: isDarkMode ? Colors.blue : Colors.white),
        url: 'https://twitter.com/RashaadAkbar');
  }
}

final hatOptions = [
  const FaIcon(FontAwesomeIcons.crown),
  const FaIcon(FontAwesomeIcons.hatWizard),
  const FaIcon(FontAwesomeIcons.chessKing),
  const FaIcon(FontAwesomeIcons.chessBoard),
  const FaIcon(FontAwesomeIcons.graduationCap),
  const FaIcon(FontAwesomeIcons.computer),
  const FaIcon(FontAwesomeIcons.python),
  const FaIcon(FontAwesomeIcons.react),
];

class AppBarTitleButton extends StatefulWidget {
  const AppBarTitleButton({Key? key}) : super(key: key);

  @override
  State<AppBarTitleButton> createState() => _AppBarTitleButtonState();
}

class _AppBarTitleButtonState extends State<AppBarTitleButton> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        if (index < (hatOptions.length - 1)) {
          index++;
        } else {
          index = 0;
        }
      }),
      child: Row(
        children: [
          hatOptions[index],
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text('Rashaad'),
          )
        ],
      ),
    );
  }
}

const appBarActionIcons = [
  Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: ChangeThemeButton(),
  ),
  LinkIcon(
      icon: FaIcon(FontAwesomeIcons.github),
      url: 'https://github.com/Rashaad1268'),
  TwitterLinkButton(),
  LinkIcon(icon: FaIcon(FontAwesomeIcons.discord), url: discordLink),
  LinkIcon(
      icon: FaIcon(
        FontAwesomeIcons.youtube,
        color: Color.fromARGB(255, 255, 0, 0),
      ),
      url: 'https://www.youtube.com/channel/UCV6UFqGfSHuWVph5BckMf9g'),
  LinkIcon(
      icon: FaIcon(
        FontAwesomeIcons.reddit,
        color: Color.fromARGB(255, 255, 69, 0),
      ),
      url: 'https://www.reddit.com/user/West_Assist_3303'),
];
