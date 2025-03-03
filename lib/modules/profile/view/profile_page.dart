import 'package:flutter/material.dart';
import 'package:flutter_assessment/modules/profile/widgets/care_takers_tile.dart';
import 'package:flutter_assessment/modules/profile/widgets/profile_tile.dart';
import 'package:flutter_assessment/modules/profile/widgets/settings_tile.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static Route route() => MaterialPageRoute(builder: (context) => ProfilePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor(context).white,
      appBar: AppBar(
        backgroundColor: appColor(context).white,
        leading: const Icon(Icons.arrow_back_ios_outlined),
      ),
      body: ListView(
        children: [
          const ProfileTile(),
          const SizedBox(height: 16),
          Divider(color: appColor(context).secondaryText!.withValues(alpha: 0.2)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text("Settings", style: TextStyle(color: appColor(context).text, fontWeight: FontWeight.w600)),
                const SizedBox(height: 32),
                const Column(
                  spacing: 32,
                  children: [
                    SettingsTile(
                      iconData: Icons.notifications_none_rounded,
                      title: "Notification",
                      subtitle: "Check your medicine notifications",
                    ),
                    SettingsTile(
                      iconData: Icons.volume_down_outlined,
                      title: "Sound",
                      subtitle: "Ring, Silent, Vibrate",
                    ),
                    SettingsTile(
                      iconData: Icons.person_2_outlined,
                      title: "Manage Your Account",
                      subtitle: "Password, Email ID, Phone Number",
                    ),
                    SettingsTile(
                      iconData: Icons.notifications_none_rounded,
                      title: "Notification",
                      subtitle: "Check your medicine notifications",
                    ),
                    SettingsTile(
                      iconData: Icons.notifications_none_rounded,
                      title: "Notification",
                      subtitle: "Check your medicine notifications",
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  "Device",
                  style: TextStyle(color: appColor(context).text, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: appColor(context).primaryText?.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    spacing: 16,
                    children: [
                      const SettingsTile(
                        iconData: Icons.volume_down_outlined,
                        title: "Connect",
                        subtitle: "Bluetooth, Wi-Fi",
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: appColor(context).white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const SettingsTile(
                          iconData: Icons.volume_down_outlined,
                          title: "Sound Option",
                          subtitle: "Ring, Silent, Vibrate",
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text("Care Takers : 03", style: TextStyle(color: appColor(context).text, fontWeight: FontWeight.w600)),
                const SizedBox(height: 16),
                CareTakersTile(),
                const SizedBox(height: 16),
                Text(
                  "Doctor",
                  style: TextStyle(color: appColor(context).text, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  decoration: BoxDecoration(
                    color: appColor(context).primaryText?.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Column(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: appColor(context).primary?.withValues(alpha: 0.6),
                          child: Icon(Icons.add, color: appColor(context).white, size: 35),
                        ),
                        const Text(
                          "Add Your Doctor",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "Or use ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: appColor(context).text)),
                              TextSpan(
                                  text: "invite link",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: appColor(context).orangeColor)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 24,
                    children: [
                      Text("Privacy Policy", style: TextStyle(color: appColor(context).text, fontSize: 16, fontWeight: FontWeight.w700)),
                      Text("Terms of Use", style: TextStyle(color: appColor(context).text, fontSize: 16, fontWeight: FontWeight.w700)),
                      Text("Rate Us", style: TextStyle(color: appColor(context).text, fontSize: 16, fontWeight: FontWeight.w700)),
                      Text("Share", style: TextStyle(color: appColor(context).text, fontSize: 16, fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 32.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: appColor(context).primary!),
              ),
              onPressed: () {},
              child: Text(
                "Logout",
                style: TextStyle(color: appColor(context).text, fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
