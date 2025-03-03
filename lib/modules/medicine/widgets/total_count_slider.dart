import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class TotalCountSlider extends StatelessWidget {
  const TotalCountSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Total Count", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
            Container(
              width: 50,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: appColor(context).secondaryText!.withValues(alpha: 0.05),
                border: Border.all(color: appColor(context).secondaryText!.withValues(alpha: 0.2)),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text(
                "01",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Slider(
          value: 1,
          min: 1,
          max: 100,
          divisions: 99,
          onChanged: (value) {},
          activeColor: appColor(context).primary,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("01", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            Text("100", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}
