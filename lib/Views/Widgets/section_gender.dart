import 'package:bmi_calcultor/Views/Widgets/custom_gender.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScetionGender extends StatefulWidget {
  const ScetionGender({super.key});

  @override
  State<ScetionGender> createState() => _ScetionGenderState();
}

class _ScetionGenderState extends State<ScetionGender> {
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: CustomGender(
              onTap: () {
                setState(() {
                  isActive = true;
                });
              },
              color:
                  isActive ? Colors.blueAccent : Colors.white.withOpacity(0.2),
              isActive: isActive,
              icon: FontAwesomeIcons.mars,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: CustomGender(
              color:
                  isActive ? Colors.white.withOpacity(0.2) : Colors.blueAccent,
              onTap: () {
                setState(() {
                  isActive = false;
                });
              },
              isActive: isActive,
              icon: FontAwesomeIcons.venus,
            ),
          ),
        ],
      ),
    );
  }
}
