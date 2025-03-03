import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 45,
                child: Icon(
                  Icons.person,
                  size: 60,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: appColor(context).background,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: appColor(context).primary!.withValues(alpha: 0.2)),
                    ),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: appColor(context).primaryText,
                      size: 13,
                    )),
              ),
            ],
          ),
          const SizedBox(width: 16),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Take Care!", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              SizedBox(height: 5),
              Text("Richa Bose", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
            ],
          )
        ],
      ),
    );
  }
}
