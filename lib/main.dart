import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_assessment/dependecy_injector.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_bloc.dart';
import 'package:mobile_assessment/features/grocery/presentation/page/list_grocery.dart';
import 'package:mobile_assessment/features/grocery/presentation/page/single_grocery.dart';
import 'package:mobile_assessment/features/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding().ensureSemantics();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<GroceryBloc>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SplashScreen.routes: (context) => const SplashScreen(),
          SingleGrocery.routes: (context) => const SingleGrocery(),
          ListGrocery.routes: (context) => ListGrocery()
        },
        initialRoute: ListGrocery.routes,
      ),
    );
  }
}
