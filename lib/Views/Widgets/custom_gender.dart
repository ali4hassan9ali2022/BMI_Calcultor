import 'package:flutter/material.dart';

class CustomGender extends StatelessWidget {
  const CustomGender({super.key, required this.icon, required this.isActive, required this.onTap, required this.color});
  final IconData icon;
  final bool isActive;
  final Color color;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 90),
            const SizedBox(height: 16),
            const Text(
              "Male",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
