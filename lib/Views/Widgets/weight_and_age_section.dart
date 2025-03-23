import 'package:bmi_calcultor/Views/Widgets/custom_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WeightAndAgeSection extends StatefulWidget {
  WeightAndAgeSection({super.key, required this.age, required this.weight});
  double weight;
  double age;
  @override
  State<WeightAndAgeSection> createState() => _WeightAndAgeSectionState();
}

class _WeightAndAgeSectionState extends State<WeightAndAgeSection> {
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
                  if (widget.weight <= 150) {
                    widget.weight++;
                  }
                });
              },
              onPressedRemove: () {
                setState(() {
                  if (widget.weight > 0) {
                    widget.weight--;
                  } else {
                    widget.weight = 0;
                  }
                });
              },
              subTitle: "${widget.weight.round()}",

              title: "WEIGHT",
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: CustomItem(
              onPressedAdd: () {
                setState(() {
                  if (widget.age < 100) {
                    widget.age++;
                  }
                });
              },
              onPressedRemove: () {
                setState(() {
                  if (widget.age > 0) {
                    widget.age--;
                  } else {
                    widget.age = 0;
                  }
                });
              },
              subTitle: "${widget.age}",
              title: "AGE",
            ),
          ),
        ],
      ),
    );
  }
}
