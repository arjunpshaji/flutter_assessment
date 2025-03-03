import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class CompartmentWidget extends StatelessWidget {
  const CompartmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 8,
        children: List.generate(
            20,
            (index) => Container(
                  width: 32,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: index == 0
                          ? appColor(context).primaryText!
                          : index == 3
                              ? appColor(context).secondaryText!.withValues(alpha: 0.05)
                              : appColor(context).secondaryText!.withValues(alpha: 0.2),
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: index == 0
                        ? appColor(context).primaryText?.withValues(alpha: 0.15)
                        : index == 3
                            ? appColor(context).secondaryText!.withValues(alpha: 0.05)
                            : null,
                  ),
                  child: Center(
                    child: Text(
                      "${index + 1}",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: index == 0
                            ? appColor(context).text!
                            : index == 3
                                ? appColor(context).secondaryText!.withValues(alpha: 0.35)
                                : null,
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
