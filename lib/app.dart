import 'package:flutter/material.dart';
import 'view/arithmetic_view.dart'; // Import the new view

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArithmeticView(), // Set ArithmeticView as the home
    );
  }
}
