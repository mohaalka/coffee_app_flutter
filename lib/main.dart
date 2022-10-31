import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.orange,
      ),
    );
  }
}
