import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class DatePickerTile extends StatelessWidget {
  const DatePickerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), border: Border.all(color: appColor(context).secondaryText!.withValues(alpha: 0.2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Today",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.arrow_forward_ios, color: appColor(context).text, size: 15)
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), border: Border.all(color: appColor(context).secondaryText!.withValues(alpha: 0.2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "End Date",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.arrow_forward_ios, color: appColor(context).text, size: 15)
              ],
            ),
          ),
        )
      ],
    );
  }
}
