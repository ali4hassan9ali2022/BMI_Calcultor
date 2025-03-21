import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Text(
            "22",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.blue,
                mini: true,
                onPressed: () {},
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                backgroundColor: Colors.blue,
                mini: true,
                onPressed: () {},
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
