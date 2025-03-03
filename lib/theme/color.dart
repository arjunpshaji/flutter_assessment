import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color? background;
  final Color? primary;
  final Color? primaryText;
  final Color? secondaryText;
  final Color? text;
  final Color? error;
  final Color? roseColor;
  final Color? violetColor;
  final Color? lightGreen;
  final Color? orangeColor;
  final Color? brownColor;
  final Color? white;

  const AppColors({
    required this.background,
    required this.primary,
    required this.primaryText,
    required this.secondaryText,
    required this.text,
    required this.error,
    required this.roseColor,
    required this.violetColor,
    required this.lightGreen,
    required this.orangeColor,
    required this.brownColor,
    required this.white,
  });

  @override
  AppColors copyWith({
    Color? background,
    Color? primary,
    Color? primaryText,
    Color? secondaryText,
    Color? text,
    Color? error,
    Color? roseColor,
    Color? violetColor,
    Color? lightGreen,
    Color? orangeColor,
    Color? brownColor,
    Color? white,
  }) {
    return AppColors(
      background: background ?? this.background,
      primary: primary ?? this.primary,
      primaryText: primaryText ?? this.primaryText,
      secondaryText: secondaryText ?? this.secondaryText,
      text: text ?? this.text,
      error: error ?? this.error,
      roseColor: roseColor ?? this.roseColor,
      violetColor: violetColor ?? this.violetColor,
      lightGreen: lightGreen ?? this.lightGreen,
      orangeColor: orangeColor ?? this.orangeColor,
      brownColor: brownColor ?? this.brownColor,
      white: white ?? this.white,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      background: Color.lerp(background, other.background, t),
      primary: Color.lerp(primary, other.primary, t),
      primaryText: Color.lerp(primaryText, other.primaryText, t),
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t),
      text: Color.lerp(text, other.text, t),
      error: Color.lerp(error, other.error, t),
      roseColor: Color.lerp(roseColor, other.roseColor, t),
      violetColor: Color.lerp(violetColor, other.violetColor, t),
      lightGreen: Color.lerp(lightGreen, other.lightGreen, t),
      orangeColor: Color.lerp(orangeColor, other.orangeColor, t),
      brownColor: Color.lerp(brownColor, other.brownColor, t),
      white: Color.lerp(white, other.white, t),
    );
  }
}
