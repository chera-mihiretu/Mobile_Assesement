import 'package:flutter/material.dart';
import 'package:mobile_assessment/features/grocery/presentation/page/single_grocery.dart';
import 'package:mobile_assessment/features/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routes: (context) => const SplashScreen(),
        SingleGrocery.routes: (context) => const SingleGrocery(),
      },
      initialRoute: SingleGrocery.routes,
    );
  }
}
