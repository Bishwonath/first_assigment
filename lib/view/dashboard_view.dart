import 'package:first_assignment/view/card_view.dart';
import 'package:first_assignment/view/show_snap_bar.dart';
import 'package:flutter/material.dart';
import 'simple_interest.dart'; // Import Simple Interest view
import 'area_of_circle.dart'; // Import Area of Circle view
import 'arithmetic_view.dart'; // Import Arithmetic View
import 'student_details_view.dart'; // Import Student Details View
import 'student_view.dart'; // Import Student View

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SimpleInterestView()),
                );
              },
              child: const Text('Simple Interest Calculator'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AreaOfCircleView()),
                );
              },
              child: const Text('Area of Circle Calculator'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ArithmeticView()),
                );
              },
              child: const Text('Arithmetic Operations'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StudentDetailsView()),
                );
              },
              child: const Text('Student Details'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
  builder: (context) => CardView(
    title: 'Default Title', 
    color: Colors.blue, // Replace with a default color
  ),
),

                );
              },
              child: const Text('Card View'),
            ),
          ],
        ),
      ),
    );
  }
}
