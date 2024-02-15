import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_switcher_app/providers/theme_provider.dart';
import 'package:theme_switcher_app/screens/home_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (create) => ThemeProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Theme Switcher",
          theme: value.themeMode,
          home: const HomeScreen(),
        );
      },
    );
  }
}
