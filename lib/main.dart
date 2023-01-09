import 'package:flutter/material.dart';
import 'package:gamification/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

final themeMode = ValueNotifier(2);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: ((context, value, child) {
        return MaterialApp(
          //theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
          darkTheme: ThemeData.from(
              colorScheme: const ColorScheme.dark(background: Colors.black)),

          themeMode: ThemeMode.values.toList()[value],
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );
      }),
      valueListenable: themeMode,
    );
  }
}
