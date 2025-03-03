import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: appColor(context).background,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Check Dashboard',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Wrapped text for proper layout
                Expanded(
                  child: Text(
                    "Here you will find everything related to your active and past medicines.",
                    style: TextStyle(fontSize: 14, color: appColor(context).secondaryText?.withValues(alpha: 0.7)),
                    softWrap: true,
                  ),
                ),
                const SizedBox(width: 12),
                // Chart without values
                SizedBox(
                  width: 60,
                  height: 60,
                  child: PieChart(
                    PieChartData(
                      sectionsSpace: 0, // No space between sections
                      centerSpaceRadius: 18, // Empty center space
                      startDegreeOffset: 180, // Adjust angle
                      sections: [
                        PieChartSectionData(
                          value: 40,
                          color: appColor(context).primary,
                          radius: 8,
                          showTitle: false, // Hide labels
                        ),
                        PieChartSectionData(
                          value: 30,
                          color: appColor(context).orangeColor,
                          radius: 8,
                          showTitle: false,
                        ),
                        PieChartSectionData(
                          value: 20,
                          color: appColor(context).roseColor,
                          radius: 8,
                          showTitle: false,
                        ),
                        PieChartSectionData(
                          value: 10,
                          color: appColor(context).lightGreen,
                          radius: 8,
                          showTitle: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
