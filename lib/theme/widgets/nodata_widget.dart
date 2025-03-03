import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class NodataWidget extends StatelessWidget {
  const NodataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/icons/empty_box.png", height: MediaQuery.of(context).size.height * 0.5),
        Positioned(bottom: 90, left: 50, right: 50, child: Text("Nothing Is Here, Add a Medicine", style: TextStyle(fontSize: 14, color: appColor(context).secondaryText!.withValues(alpha: 0.5))))
      ],
    );
  }
}
