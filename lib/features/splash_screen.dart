import 'package:flutter/material.dart';
import 'package:mobile_assessment/cores/theme/my_theme.dart';

class SplashScreen extends StatelessWidget {
  static const String routes = '/splash_screen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/splash_background.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [MyTheme.blackTransparent, MyTheme.transparent],
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Welcome to',
                    style: MyTheme.titleFont(
                        MyTheme.white, MyTheme.normalTitle22)),
                Text('SEEDY CHOW',
                    style:
                        MyTheme.splashTitle(MyTheme.white, MyTheme.bigTitle40)),
                SizedBox(height: MediaQuery.of(context).size.height / 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
