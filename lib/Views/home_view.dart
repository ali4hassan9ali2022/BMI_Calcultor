import 'dart:math';

import 'package:bmi_calcultor/Views/Widgets/custom_button.dart';
import 'package:bmi_calcultor/Views/Widgets/section_height.dart';
import 'package:bmi_calcultor/Views/Widgets/section_gender.dart';
import 'package:bmi_calcultor/Views/Widgets/weight_and_age_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double weight = 0;
  double age = 0;
  double height = 0;
  bool isActive = true;
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
          Expanded(child: SectionHeight(height: height,)),
          const SizedBox(height: 20),
          Expanded(child: WeightAndAgeSection(age: age, weight: weight)),
          const SizedBox(height: 10),
          CustomButton(onTap: () {
            double result = weight / pow(height / 100, 2);
          }),
        ],
      ),
    );
  }
}
