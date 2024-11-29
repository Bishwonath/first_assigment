import 'package:flutter/material.dart';
import 'view/area_of_circle.dart'; // Import the new view

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AreaOfCircleView(), // Set AreaOfCircleView as the home
    );
  }
}
