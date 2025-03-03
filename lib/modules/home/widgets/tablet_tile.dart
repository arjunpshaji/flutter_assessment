import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class TabletTile extends StatelessWidget {
  final Icon icon;
  final Color iconBgcolor;
  final String title;
  final String subtitle;
  final String dayCount;
  final Color notificationColor;
  final String notificationText;
  const TabletTile(
      {super.key,
      required this.icon,
      required this.iconBgcolor,
      required this.title,
      required this.subtitle,
      required this.dayCount,
      required this.notificationColor,
      required this.notificationText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appColor(context).primaryText?.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: iconBgcolor, borderRadius: BorderRadius.circular(10)),
            child: icon,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                "$subtitle   Day $dayCount",
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Icon(Icons.notifications_none_sharp, color: notificationColor, size: 25),
              Text(
                notificationText,
                style: const TextStyle(fontSize: 10),
              )
            ],
          )
        ],
      ),
    );
  }
}
