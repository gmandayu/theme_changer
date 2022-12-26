import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/src/model/model_theme.dart';
import 'package:theme_changer/src/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: themeNotifier.isDark
                ? ThemeData(brightness: Brightness.dark)
                : ThemeData(
                    brightness: Brightness.light,
                    primaryColor: Colors.amber,
                    primarySwatch: Colors.orange,
                  ),
            debugShowCheckedModeBanner: false,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
