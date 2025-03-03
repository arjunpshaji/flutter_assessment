import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class ColorPickerTile extends StatelessWidget {
  const ColorPickerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 8,
        children: List.generate(15, (index) {
          return Container(
            decoration: BoxDecoration(
              border: index == 0 ? Border.all(color: appColor(context).primary!) : null,
              borderRadius: BorderRadius.circular(50),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.primaries[index % Colors.primaries.length].withValues(alpha: 0.5),
              radius: 20,
            ),
          );
        }),
      ),
    );
  }
}
