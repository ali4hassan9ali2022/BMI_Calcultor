import 'package:flutter/material.dart';


class SectionHeight extends StatefulWidget {
   SectionHeight({super.key, required this.height});
  double height;
  @override
  State<SectionHeight> createState() => _SectionHeightState();
}

class _SectionHeightState extends State<SectionHeight> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "HEIGHT",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "${widget.height.round()}",
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(width: 5),
                const Text(
                  "cm",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value:widget.height,
              min: 80,
              max: 220,
              onChanged: (value) {
                setState(() {
                 widget.height = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
