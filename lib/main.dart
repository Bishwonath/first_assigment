import 'package:first_assignment/view/dashboard_view.dart';
import 'package:first_assignment/view/student_details_view.dart';
import 'package:first_assignment/view/student_view.dart';
import 'package:flutter/material.dart';
import 'app.dart'; // Import the app.dart file

// ignore: duplicate_import
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: "//",
    routes: {
      "//": (context) => DashboardView(),
      "/": (context)=>StudentDetailsView(),
      "/data":(context)=>StudentView()
    },
  ));
}
