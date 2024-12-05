import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.yellow[200]),
            
            ),
          ),
          Expanded(
            flex: 2,
            child: Flexible(
              fit: FlexFit.loose,
              child: Container(
                height: 600,
                decoration: BoxDecoration(color: Colors.red[200]),
            
              
              
              ),
            ),
          )
        ]
        ,),
    );
  }
}