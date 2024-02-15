import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_switcher_app/providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Theme Switcher"),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                  child: Text(
                "Text",
                style: TextStyle(fontSize: 34),
              )),
              ElevatedButton(
                  onPressed: value.toggleTheme,
                  child: const Text("Elevated  Button"))
            ],
          ),
        );
      },
    );
  }
}
