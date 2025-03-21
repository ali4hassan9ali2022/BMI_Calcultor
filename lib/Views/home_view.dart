import 'package:bmi_calcultor/Views/Widgets/custom_button.dart';
import 'package:bmi_calcultor/Views/Widgets/height_section.dart';
import 'package:bmi_calcultor/Views/Widgets/section_gender.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("BMI Calculttor"),
      ),
      body: Column(
        children: [
          Expanded(child: ScetionGender()),
          SizedBox(height: 20),
          Expanded(child: HeightSection()),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          CustomButton(),
        ],
      ),
    );
  }
}
