import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class TypePickerTile extends StatelessWidget {
  const TypePickerTile({super.key});

  @override
  Widget build(BuildContext context) {
    final types = ['Tablet', 'Capsule', 'Cream', 'Liquid'];
    final icons = [
      Icons.circle_outlined,
      Icons.medication_rounded,
      Icons.sanitizer_outlined,
      Icons.water_drop_outlined,
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 16,
        children: List.generate(
          types.length,
          (index) => Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: appColor(context).secondaryText!.withAlpha(50),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                  color: appColor(context).background,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icons[index],
                  color: appColor(context).roseColor?.withValues(alpha: 0.5),
                  size: 24,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                types[index],
                style: TextStyle(
                  color:appColor(context).secondaryText?.withValues(alpha: 0.5),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
