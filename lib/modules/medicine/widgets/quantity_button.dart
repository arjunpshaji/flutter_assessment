import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Expanded(
          flex: 4,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), border: Border.all(color: appColor(context).secondaryText!.withValues(alpha: 0.2))),
              child: const Text("Take 1/2 Pill", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),
        ),
        Flexible(
          flex: 1,
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: appColor(context).primary!.withValues(alpha: 0.5))),
              child: IconButton(icon: Icon(Icons.remove, color: appColor(context).primary), onPressed: null)),
        ), // Disabled
        Flexible(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(color: appColor(context).primary!, borderRadius: BorderRadius.circular(6)),
              child: IconButton(icon: Icon(Icons.add, color: appColor(context).white), onPressed: null)), // Disabled
        )
      ],
    );
  }
}
