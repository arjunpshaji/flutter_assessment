import 'package:flutter/material.dart';
import 'package:flutter_assessment/modules/report/view/reports_page.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: appColor(context).background,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: () {},
              child: Column(
                children: [
                  Icon(Icons.home, color: appColor(context).primaryText),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: appColor(context).secondaryText!.withValues(alpha: 0.5),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 40), // Space for FAB
            InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: () {
                Navigator.push(context, ReportScreen.route());
              },
              child: Column(
                children: [
                  Icon(Icons.bar_chart, color: appColor(context).secondaryText!.withValues(alpha: 0.5)),
                  Text(
                    "Report",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: appColor(context).secondaryText!.withValues(alpha: 0.5),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
