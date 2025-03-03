import 'package:flutter/material.dart';
import 'package:flutter_assessment/modules/home/widgets/tablet_tile.dart';
import 'package:flutter_assessment/modules/report/widgets/dashboard_card.dart';
import 'package:flutter_assessment/modules/report/widgets/select_day_widget.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  static Route route() => MaterialPageRoute(builder: (context) => ReportScreen());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor(context).white,
      appBar: AppBar(
        backgroundColor: appColor(context).white,
        title: const Text('Report', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Card(
              color: appColor(context).background,
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Today’s Report', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _reportItem('5', 'Total', context),
                        _reportItem('3', 'Taken', context),
                        _reportItem('1', 'Missed', context),
                        _reportItem('1', 'Snoozed', context),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            const DashboardCard(),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Check History",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: appColor(context).primary,
                )
              ],
            ),
            const SizedBox(height: 16),
            const SelectDayWidget(),
            const SizedBox(height: 16),
            const Text(
              "Morning 08:00 am",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            TabletTile(
              icon: Icon(Icons.water_drop, color: appColor(context).background),
              title: "Calpol 500mg Tablet",
              subtitle: "Before breakfast",
              notificationText: "Taken",
              notificationColor: appColor(context).lightGreen!,
              iconBgcolor: appColor(context).roseColor!.withValues(alpha: 0.3),
              dayCount: "01",
            ),
            const SizedBox(height: 8),
            TabletTile(
              icon: Icon(Icons.water_drop, color: appColor(context).background),
              title: "Calpol 500mg Tablet",
              subtitle: "Before breakfast",
              notificationText: "Missed",
              notificationColor: appColor(context).error!,
              iconBgcolor: appColor(context).roseColor!.withValues(alpha: 0.3),
              dayCount: "27",
            ),
            const SizedBox(height: 16),
            const Text(
              "Afternoon 02:00 pm",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            TabletTile(
              icon: Icon(Icons.water_drop, color: appColor(context).background),
              title: "Calpol 500mg Tablet",
              subtitle: "After food",
              notificationText: "Snoozed",
              notificationColor: appColor(context).orangeColor!,
              iconBgcolor: appColor(context).roseColor!.withValues(alpha: 0.3),
              dayCount: "01",
            ),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }

  Widget _reportItem(String count, String label, BuildContext context) {
    return Column(
      children: [
        Text(count,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: appColor(context).primary,
            )),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: appColor(context).secondaryText!.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}
