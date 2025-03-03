import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class DropdownWidget extends StatelessWidget {
  final String value;

  const DropdownWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: appColor(context).secondaryText!.withValues(alpha: 0.2)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          style: TextStyle(fontSize: 14, color: appColor(context).text),
          items: const [
            DropdownMenuItem(value: "Everyday", child: Text("Everyday")),
            DropdownMenuItem(value: "Three Time", child: Text("Three Time")),
            DropdownMenuItem(value: "Alternate", child: Text("Alternate")),
            DropdownMenuItem(value: "Custom", child: Text("Custom")),
          ],
          onChanged: (x) {},
          icon: const Icon(Icons.keyboard_arrow_down),
        ),
      ),
    );
  }
}
