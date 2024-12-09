import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 1; i < 10; i++)
                MyCard(
                  title: 'Card $i',
                  color: i.isEven ? Colors.green : Colors.red,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.title, required this.color});

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        elevation: 5,
        color: color,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
