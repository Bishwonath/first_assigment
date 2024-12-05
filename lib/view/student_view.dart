// ignore_for_file: depend_on_referenced_packages

import 'package:first_assignment/core/common/student_listview.dart';
import 'package:first_assignment/model/student.dart';
import 'package:flutter/material.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  List <Student> lststd =[];

  @override
  void didChangeDependencies() {
    lststd = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: lststd.isEmpty?
      const Center(child: Text("no data"),
      ):
      StudentListViewWidget(stdlist:lststd,)

    );
  }
}