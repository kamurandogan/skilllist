import 'package:flutter/material.dart';

import 'dark_theme.dart';
import 'light_theme.dart';

export 'app_text_styles.dart';
export 'color_schemes.dart';
export 'dark_theme.dart';
export 'light_theme.dart';
export 'theme_extensions.dart';

/// Central theme management class
/// Provides easy access to light and dark themes
class AppTheme {
  AppTheme._();

  /// Light theme
  static ThemeData get light => lightTheme;

  /// Dark theme
  static ThemeData get dark => darkTheme;
}
