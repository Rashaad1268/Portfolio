import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/layouts/layouts.dart';
import 'package:frontend/utils/utils.dart';
import 'package:frontend/widgets/widgets.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(isDarkThemeProvider);

    return MaterialApp(
        title: 'Portfolio',
        debugShowCheckedModeBanner:
            false, // Don't display the debug banner because the icons in the appbar will get convered
        theme: ThemeData(
            fontFamily: 'JetBrainsMono',
            brightness: Brightness.light,
            snackBarTheme:
                const SnackBarThemeData(behavior: SnackBarBehavior.floating)),
        darkTheme: ThemeData(
            fontFamily: 'JetBrainsMono',
            brightness: Brightness.dark,
            snackBarTheme:
                const SnackBarThemeData(behavior: SnackBarBehavior.floating)),
        themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
        home: Responsive(
          mobile: MobileLayout(),
          tablet: TabletLayout(),
          desktop: DesktopLayout(),
        ));
  }
}
