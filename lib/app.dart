import 'package:flutter/material.dart';
import 'view/simple_interest.dart'; // Import the SimpleInterestView

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleInterestView(), // Set SimpleInterestView as the home
    );
  }
}
