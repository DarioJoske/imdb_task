import 'package:flutter/material.dart';

import 'q_colors.dart';

class QTheme {
  static final qThemeDark = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: QColors.secondary,
    colorScheme: const ColorScheme.dark(
      primary: QColors.primary,
      secondary: QColors.secondary,
      surface: QColors.surface,
      error: QColors.error,
      onPrimary: QColors.onPrimary,
      onSecondary: QColors.onSecondary,
      onSurface: QColors.onSurface,
      onError: QColors.onError,
    ),
  );
}
