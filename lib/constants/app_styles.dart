import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF5C6BC0);
  static const Color secondary = Color(0xFF7986CB);
  static const Color background = Color(0xFFF5F6F9);
  static const Color textDark = Color(0xFF3E4249);
  static const Color textLight = Color(0xFF7C7D7E);
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
