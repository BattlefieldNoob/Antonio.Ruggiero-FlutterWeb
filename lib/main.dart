import 'package:AntonioRuggiero/home_page.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData.light(),
        dark: ThemeData.dark().copyWith(dividerColor: Colors.black87),
        initial: AdaptiveThemeMode.system,
        builder: (theme, darkTheme) {
          return MaterialApp(
            title: 'Antonio Ruggiero',
            theme: theme,
            darkTheme: darkTheme,
            home: const HomePage(),
          );
        });
  }
}
