import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  double principal = 0;
  double rate = 0;
  double time = 0;
  double interest = 0;

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  principal = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Principal',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the principal amount';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  rate = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Rate of Interest (%)',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the rate of interest';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  time = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Time (years)',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the time period';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              Text(
                'Interest: ₹${interest.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        interest = (principal * rate * time) / 100;
                      });
                    }
                  },
                  child: const Text('Calculate Interest'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: SimpleInterestView()));
