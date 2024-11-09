import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF2B2D42);
  static const Color secondary = Color(0xFF8D99AE);
  static const Color accent = Color(0xFFEF233C);
  static const Color background = Color(0xFFEDF2F4);
  static const Color textDark = Color(0xFF2B2D42);
  static const Color textLight = Color(0xFF8D99AE);
}

class AppStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static const TextStyle title = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  static const TextStyle price = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );
}
