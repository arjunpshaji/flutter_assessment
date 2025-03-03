import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/color.dart';

AppColors appColor(context) => Theme.of(context).extension<AppColors>()!;

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    extensions: const <ThemeExtension<AppColors>>[
      AppColors(
        background: Color(0xffFAFAFA),
        white: Color(0xffFFFFFF),
        primary: Color(0xff03adfc),
        primaryText: Color(0xff03dbfc),
        secondaryText: Color(0xff4A4A4A),
        text: Color(0xff202123),
        error: Color(0xffD14343),
        roseColor: Color(0xffce03fc),
        violetColor: Color(0xff5e03fc),
        lightGreen: Color(0xff059E90),
        orangeColor: Color(0xffE47004),
        brownColor: Color(0xff44350D),
      ),
    ],
    fontFamily: 'Manrope',
  );
}
