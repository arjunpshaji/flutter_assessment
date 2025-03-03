import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

void showNoConnectionDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: appColor(context).white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                "Your Device is not connected",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Image.asset("assets/icons/no_connection.png", height: 120),
            const SizedBox(height: 16),
            const Text(
              "Connect your device with",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: appColor(context).primary,
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),
                      ),
                      child: const Icon(Icons.bluetooth, color: Colors.white, size: 30),
                    ),
                  ),
                ),
                const VerticalDivider(width: 1),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: appColor(context).primary,
                        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20)),
                      ),
                      child: const Icon(Icons.wifi, color: Colors.white, size: 30),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
