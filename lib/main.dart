import 'package:bmi_calcultor/Views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalcultor());
}

class BmiCalcultor extends StatelessWidget {
  const BmiCalcultor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeView(),
    );
  }
}
