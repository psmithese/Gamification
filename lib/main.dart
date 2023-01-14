import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gamification/screens/onboarding_screen.dart';

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
          theme: ThemeData(
            useMaterial3: true,
              colorScheme: const ColorScheme.light(background: Color.fromARGB(255, 92, 88, 255))),

          themeMode: ThemeMode.values.toList()[value],
          debugShowCheckedModeBanner: false,
          home:  AnimatedSplashScreen(nextScreen: const OnboardingScreen(), 
          splash: Container(
            decoration: const BoxDecoration(
              
              image: DecorationImage(image: AssetImage('assets/images/xoviya.png')
              )
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 92, 88, 255),
          splashIconSize: 100,
          splashTransition: SplashTransition.fadeTransition,
        
          
          ),
        );
      }),
      valueListenable: themeMode,
    );
  }
}
