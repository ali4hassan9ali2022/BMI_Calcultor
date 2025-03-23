import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onPressedAdd,
    required this.onPressedRemove,
  });
  final String title;
  final String subTitle;
  final Function() onPressedAdd;
  final Function() onPressedRemove;
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
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: "remove",
                backgroundColor: Colors.blue,
                mini: true,
                onPressed: onPressedRemove,
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                heroTag: "Add",
                backgroundColor: Colors.blue,
                mini: true,
                onPressed: onPressedAdd,
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
