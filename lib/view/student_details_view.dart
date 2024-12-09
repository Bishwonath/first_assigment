import 'package:first_assignment/core/common/my_snack_bar.dart';
import 'package:first_assignment/core/common/student_listview.dart';
import 'package:first_assignment/model/student.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: depend_on_referenced_packages


class StudentDetailsView extends StatefulWidget {
  const StudentDetailsView({super.key});

  @override
  State<StudentDetailsView> createState() => _StudentDetailsViewState();
}

class _StudentDetailsViewState extends State<StudentDetailsView> {

  final _gap = const SizedBox(height: 20);

  final _items = [
    const DropdownMenuItem(child:Text("Kathmandu") ,value: "Kathmandu",),
    const DropdownMenuItem(child:Text("Pokhara") ,value: "Pokhara",),
    const DropdownMenuItem(child:Text("Chitwan") ,value: "Chitwan",),
    const DropdownMenuItem(child:Text("Jhapa") ,value: "Jhapa",),

  ];
   List <Student> stdlist = [];
   String? selectedCity;

  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My student details"),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: _fnameController,
              decoration: const InputDecoration(
                labelText: "Enter fname",
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            TextFormField(
              controller: _lnameController,
              decoration: const InputDecoration(
                label: Text("Enter last name"),
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            DropdownButtonFormField(
              items: _items,
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              
            },
            decoration: const InputDecoration(
              label: Text("select your city"),
              border: OutlineInputBorder(),
            ),
            ),

            _gap,
            Container(
              width: double.infinity,
              child: ElevatedButton(
              onPressed: (){
                Student studentdata = Student(
                  fname: _fnameController.text.trim(), 
                  lname: _lnameController.text.trim(), 
                  city: selectedCity!,
                  );
                  showMySnackbar(context: context, message: "Successfully", color: Colors.green);

                  setState(() {
                    stdlist.add(studentdata);

                  });
              },
              
              child: Text("Add student"),
              ),
            ),
            _gap,
            Container(
              width: double.infinity,
              child: ElevatedButton(
              onPressed: 
              ()=>{
                Navigator.pushNamed(
                context, 
                "/data",
                arguments: stdlist),
              },
              child: Text("View students"),),
            ),

            _gap,
            stdlist.isEmpty? 
            Text("No data"):
            StudentListViewWidget(stdlist: stdlist)


         
        
          ],
        ),
      ),
    );
  }
}
