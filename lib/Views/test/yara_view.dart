import 'package:flutter/material.dart';

class YaraView extends StatelessWidget {
  const YaraView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Love Yara",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
