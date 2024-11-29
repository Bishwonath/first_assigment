import 'package:flutter/material.dart';
import 'view/dashboard_view.dart'; // Import the Dashboard view

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(), // Set DashboardView as the home
    );
  }
}
