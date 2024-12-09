import 'package:first_assignment/model/student.dart';
import 'package:flutter/material.dart';

class StudentListViewWidget extends StatelessWidget {
  const StudentListViewWidget({
    super.key,
    required this.stdlist,
  });

  final List<Student> stdlist;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: stdlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('${stdlist[index].fname} ${stdlist[index].lname}'),
            trailing: IconButton(
              onPressed: () {
                // Handle edit action here
              },
              icon: const Icon(Icons.edit),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentDetailsPage(student: stdlist[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class StudentDetailsPage extends StatelessWidget {
  const StudentDetailsPage({super.key, required this.student});

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('First Name: ${student.fname}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Last Name: ${student.lname}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
