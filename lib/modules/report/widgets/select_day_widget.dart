import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class SelectDayWidget extends StatelessWidget {
  const SelectDayWidget({super.key});

  final List<String> weekdays = const ["SUN", "MON", "TUE", "WED", "THU", "FRI"];
  final List<int> days = const [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: weekdays
              .map((day) => Text(
                    day,
                    style: TextStyle(color: appColor(context).secondaryText!.withValues(alpha: 0.5), fontSize: 12),
                  ))
              .toList(),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: days.map((day) {
            return Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: day == 1 ? appColor(context).primary : appColor(context).primary!.withValues(alpha: 0.05), // Static highlight for the first day
                shape: BoxShape.circle,
              ),
              child: Text(
                day.toString(),
                style: TextStyle(
                  color: day == 1 ? appColor(context).background : appColor(context).text,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}