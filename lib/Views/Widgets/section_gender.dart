import 'package:bmi_calcultor/Views/Widgets/custom_gender.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScetionGender extends StatelessWidget {
  const ScetionGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(child: CustomGender(icon: FontAwesomeIcons.mars)),
          SizedBox(width: 20),
          Expanded(child: CustomGender(icon: FontAwesomeIcons.venus)),
        ],
      ),
    );
  }
}
