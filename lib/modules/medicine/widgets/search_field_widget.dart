import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: appColor(context).secondaryText!.withValues(alpha: 0.5)),
          suffixIcon: Icon(Icons.mic, color: appColor(context).secondaryText!.withValues(alpha: 0.5)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: appColor(context).secondaryText!.withValues(alpha: 0.3)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: appColor(context).secondaryText!.withValues(alpha: 0.3)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: appColor(context).secondaryText!.withValues(alpha: 0.3)),
          ),
          hintText: "Search Medicine Name",
          hintStyle: TextStyle(color: appColor(context).secondaryText?.withValues(alpha: 0.5)),
        ),
      ),
    );
  }
}
