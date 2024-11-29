import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  double first = 0;
  double second = 0;
  double result = 0;
  String operation = '';

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Operations'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  first = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter first number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the first number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  second = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter second number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the second number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        setState(() {
                          result = first + second;
                          operation = 'Addition';
                        });
                      }
                    },
                    child: const Text('Addition'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        setState(() {
                          result = first - second;
                          operation = 'Subtraction';
                        });
                      }
                    },
                    child: const Text('Subtraction'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        setState(() {
                          result = first * second;
                          operation = 'Multiplication';
                        });
                      }
                    },
                    child: const Text('Multiplication'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        setState(() {
                          if (second != 0) {
                            result = first / second;
                            operation = 'Division';
                          } else {
                            result = 0;
                            operation = 'Error: Division by 0';
                          }
                        });
                      }
                    },
                    child: const Text('Division'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
