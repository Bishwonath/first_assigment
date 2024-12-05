import 'package:flutter/material.dart';

class LoadimageView extends StatelessWidget {
  const LoadimageView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('image view'),
        centerTitle: true,
        elevation: 0,
      ), body: SafeArea(
        
        child: SizedBox( 
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width * .5,
          child: Image.asset(
            'assets/images/image2.png',
            fit: BoxFit.fill,
            )
          )

        )
          // Container(
          //   child: Image.asset("./assets/images/image1.png"),
          //   height: 200,
          //   width: 200,
          //   constraints: BoxConstraints.expand(height: 200,width: 200),
          // ),
          //   Container(
          //   child: Image.asset("./assets/images/image1.png"),
          //   height: 200,
          //   width: 200,
          //   constraints: BoxConstraints.expand(height: 200,width: 200),
          // ),
          //   Container(
          //   child: Image.asset("./assets/images/image1.png"),
          //   height: 200,
          //   width: 200,
          //   constraints: BoxConstraints.expand(height: 200,width: 200),
          // ),
          
        
   );
  }
}