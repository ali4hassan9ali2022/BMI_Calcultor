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
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("BMI Calculttor"),
      ),
      body: const Column(
        children: [
          Expanded(child: ScetionGender()),

          SizedBox(height: 20),
          Expanded(child: SectionHeight()),
          SizedBox(height: 20),
          Expanded(child: WeightAndAgeSection()),
          SizedBox(height: 10),
          CustomButton(),
        ],
      ),
    );
  }
}
