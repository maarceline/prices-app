import 'package:flutter/material.dart';
import 'package:prices_app/pages/welcome_page.dart';
import 'package:prices_app/themes/dark_theme.dart';
import 'package:prices_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const WelcomePage(),
        theme: darkTheme);
  }
}
