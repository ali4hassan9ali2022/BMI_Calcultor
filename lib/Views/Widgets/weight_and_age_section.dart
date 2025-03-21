import 'package:bmi_calcultor/Views/Widgets/custom_item.dart';
import 'package:flutter/material.dart';

class WeightAndAgeSection extends StatefulWidget {
  const WeightAndAgeSection({super.key});

  @override
  State<WeightAndAgeSection> createState() => _WeightAndAgeSectionState();
}

class _WeightAndAgeSectionState extends State<WeightAndAgeSection> {
  double weight = 0;
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: CustomItem(
              onPressedAdd: () {
                setState(() {
                  if (weight <= 150) {
                    weight++;
                  }
                });
              },
              onPressedRemove: () {
                setState(() {
                  if (weight > 0) {
                    weight--;
                  } else {
                    weight = 0;
                  }
                });
              },
              subTitle: "${weight.round()}",

              title: "WEIGHT",
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: CustomItem(
              onPressedAdd: () {
                setState(() {
                  if (age < 100) {
                    age++;
                  }
                });
              },
              onPressedRemove: () {
                setState(() {
                  if (age > 0) {
                    age--;
                  } else {
                    age = 0;
                  }
                });
              },
              subTitle: "$age",
              title: "AGE",
            ),
          ),
        ],
      ),
    );
  }
}
