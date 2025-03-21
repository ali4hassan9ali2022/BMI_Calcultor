import 'package:bmi_calcultor/Views/Widgets/custom_item.dart';
import 'package:flutter/material.dart';

class WeightAndAgeSection extends StatelessWidget {
  const WeightAndAgeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(child: CustomItem(title: "WEIGHT")),
          SizedBox(width: 20),
          Expanded(child: CustomItem(title: "AGE")),
        ],
      ),
    );
  }
}

