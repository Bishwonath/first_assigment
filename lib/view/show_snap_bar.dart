import 'package:flutter/material.dart';

class ShowSnackbar extends StatefulWidget {
  const ShowSnackbar({super.key});

  @override
  State<ShowSnackbar> createState() => _ShowSnackbarViewState();
}

class _ShowSnackbarViewState extends State<ShowSnackbar> {
  _showSnackbar(){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.green,
        content: Text("hello world1"),
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        )   
    );
    _showSnackbar2(){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.green,
        content: Text("hello world1"),
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        )   
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("snack bar"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: _showSnackbar, child: Text("show message 1")),
          ElevatedButton(onPressed: ()=>{}, child: Text("show message 2"))

        ],
        ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}