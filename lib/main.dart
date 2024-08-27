import 'package:flutter/material.dart';
import 'package:mobile_assessment/features/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {SplashScreen.routes: (context) => const SplashScreen()},
      initialRoute: SplashScreen.routes,
    );
  }
}
