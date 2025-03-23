import 'package:bmi_calcultor/Views/Widgets/custom_button.dart';
import 'package:bmi_calcultor/Views/Widgets/section_height.dart';
import 'package:bmi_calcultor/Views/Widgets/section_gender.dart';
import 'package:bmi_calcultor/Views/Widgets/weight_and_age_section.dart';
import 'package:bmi_calcultor/Views/calcultor_view.dart';
import 'package:bmi_calcultor/Views/test/yara_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static double weight = 0;
  static double age = 0;
  static double height = 120;
  static bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("BMI Calculttor"),
      ),
      body: Column(
        children: [
          const Expanded(child: ScetionGender()),

          const SizedBox(height: 20),
          Expanded(child: SectionHeight(height: height)),
          const SizedBox(height: 20),
          Expanded(child: WeightAndAgeSection(age: age, weight: weight)),
          const SizedBox(height: 10),
          CustomButton(
            onPressed: () {
              // double result = weight / pow(height / 100, 2);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const YaraView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
