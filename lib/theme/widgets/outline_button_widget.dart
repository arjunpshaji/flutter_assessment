import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class OutlineButtonWidget extends StatelessWidget {
  const OutlineButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        icon: Image.asset('assets/icons/google_icon.png', height: 20),
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          side: BorderSide(color: appColor(context).secondaryText!.withValues(alpha: 0.2)), 
        ),
        label: Text("Continue with Google", style: TextStyle(fontSize: 14, color: appColor(context).text)),
      ),
    );
  }
}
