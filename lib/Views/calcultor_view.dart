import 'package:flutter/material.dart';

class CalcultorView extends StatelessWidget {
  const CalcultorView({
    super.key,
    required this.gender,
    required this.result,
    required this.age,
  });
  final bool gender;
  final double result, age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Result", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender Is: ${gender ? "Male" : "Female"}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 16),
            Text(
              "Result Is: ${result.round()}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 16),
            Text(
              "Age Is: ${age.round()}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
