import 'package:material_ui/material_ui.dart';

class AppColors {
  static const Color primaryPurple = Color(0xFF482541);
  static const Color secondaryPurple = Color(0xFF713B68);
  static const Color white = Color(0xFFFFFFFF);
  static const Color borderGrey = Color(0xFFE2E2E2);
  static const Color textDark = Color(0xFF29252B);
  static const Color iconGrey = Color(0xFF92999B);

}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
     primaryColor: AppColors.primaryPurple,
     scaffoldBackgroundColor: AppColors.white,
     colorScheme: ColorScheme.light(
      primary: AppColors.primaryPurple,
      secondary: AppColors.secondaryPurple,
      surface: AppColors.white,
    ),

  );

}
