import 'package:bmi_calcultor/Views/test/yara_view.dart';
import 'package:flutter/material.dart';

class AliView extends StatelessWidget {
  const AliView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const YaraView();
                },
              ),
            );
          },
          child: const Text("Go To"),
        ),
      ),
    );
  }
}
