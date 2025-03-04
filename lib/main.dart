import 'package:flutter/material.dart';
import 'package:nova_app/features/cart/cart_screen.dart';
import 'package:nova_app/features/onBoarding/splash/splash_screen.dart';

import 'features/bottomNavigatorBar/bottom_navigator_bar_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Changa',
        scaffoldBackgroundColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavigatorBarScreen(),
    );
  }
}
