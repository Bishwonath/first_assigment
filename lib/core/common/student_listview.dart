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
      child: 
        ListView.builder(
          itemCount: stdlist.length,
          itemBuilder:(context,index){
            return  ListTile(
              leading:Icon(Icons.person) ,
              title: Text('${stdlist[index].fname} ${stdlist[index].lname}'),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
            );
    
          }
    
          ),
    );
  }
}