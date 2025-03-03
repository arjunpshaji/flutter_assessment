import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class DoseTile extends StatelessWidget {
  final String title;
  const DoseTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      children: [
        Row(
          children: [
            Icon(
              Icons.access_time_outlined,
              color: appColor(context).secondaryText?.withValues(alpha: 0.3),
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: appColor(context).secondaryText?.withValues(alpha: 0.6),
            )
          ],
        ),
        Divider(color: appColor(context).secondaryText?.withValues(alpha: 0.15))
      ],
    );
  }
}
