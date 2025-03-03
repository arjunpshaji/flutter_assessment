import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class SettingsTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  const SettingsTile({super.key, required this.iconData, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: appColor(context).secondaryText!.withValues(alpha: 0.5),
          size: 32,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: appColor(context).text),
            ),
            Text(subtitle,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: appColor(context).secondaryText!.withValues(alpha: 0.5)))
          ],
        )
      ],
    );
  }
}
