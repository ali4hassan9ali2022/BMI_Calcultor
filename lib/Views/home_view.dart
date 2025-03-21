import 'package:bmi_calcultor/Views/Widgets/custom_button.dart';
import 'package:bmi_calcultor/Views/Widgets/custom_item.dart';
import 'package:bmi_calcultor/Views/Widgets/section_height.dart';
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
          Expanded(child: SectionHeight()),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(child: CustomItem(title: "WEIGHT")),
                  SizedBox(width: 20),
                  Expanded(child: CustomItem(title: "AGE")),
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

