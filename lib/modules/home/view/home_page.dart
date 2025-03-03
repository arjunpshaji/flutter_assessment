import 'package:flutter/material.dart';
import 'package:flutter_assessment/modules/home/widgets/tablet_tile.dart';
import 'package:flutter_assessment/modules/medicine/view/add_medicine_page.dart';
import 'package:flutter_assessment/modules/profile/view/profile_page.dart';
import 'package:flutter_assessment/theme/app_theme.dart';
import 'package:flutter_assessment/theme/widgets/bottom_navigation.dart';
import 'package:flutter_assessment/theme/widgets/day_selector.dart';
import 'package:flutter_assessment/theme/widgets/nodata_widget.dart';

class HomePage extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (context) => HomePage());

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isNextPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor(context).white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appColor(context).white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Harry!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8),
            Text(
              "5 Medicines Left",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        toolbarHeight: 100,
        actions: [
          Icon(
            Icons.medical_services_sharp,
            color: appColor(context).primary,
          ),
          const SizedBox(width: 16),
          InkWell(
            onTap: (){
              Navigator.push(context, ProfilePage.route());
            },
            child: const CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 30),
        child: ListView(children: [
          DaySelector(
            onDateChange: (date) {
              setState(() {
                isNextPage = !isNextPage;
              });
            },
          ),
          isNextPage
              ? const NodataWidget()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
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
                      notificationColor: appColor(context).roseColor!,
                      iconBgcolor: appColor(context).roseColor!.withValues(alpha: 0.3),
                      dayCount: "01",
                    ),
                    const SizedBox(height: 8),
                    TabletTile(
                      icon: Icon(Icons.medical_services, color: appColor(context).background),
                      title: "Calpol 500mg Tablet",
                      subtitle: "Before breakfast",
                      notificationText: "Missed",
                      notificationColor: appColor(context).error!,
                      iconBgcolor: appColor(context).primaryText!.withValues(alpha: 0.3),
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
                      iconBgcolor: appColor(context).violetColor!.withValues(alpha: 0.3),
                      dayCount: "01",
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Night 09:00 pm",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TabletTile(
                      icon: Icon(Icons.medical_services, color: appColor(context).background),
                      title: "Calpol 500mg Tablet",
                      subtitle: "Before sleep",
                      notificationText: "Missed",
                      notificationColor: appColor(context).secondaryText!.withValues(alpha: 0.5),
                      iconBgcolor: appColor(context).violetColor!.withValues(alpha: 0.3),
                      dayCount: "03",
                    ),
                  ],
                ),
        ]),
      ),
      bottomNavigationBar: const BottomNavigation(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appColor(context).text,
        shape: const CircleBorder(),
        elevation: 5,
        child: Icon(Icons.add, color: appColor(context).background),
        onPressed: () {
          Navigator.push(context, AddMedicinesScreen.route());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
