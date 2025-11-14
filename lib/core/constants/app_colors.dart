import 'dart:ui';

/// Application color palette
/// Contains all colors used throughout the app for light and dark themes
class AppColors {
  AppColors._();

  // ==================== LIGHT THEME COLORS ====================

  /// Primary brand color - Soft mint green
  static const Color lightPrimary = Color(0xFFB8D0C3);

  /// Secondary brand color - Vibrant green
  static const Color lightSecondary = Color(0xFF00A76B);

  /// Tertiary brand color - Very light mint
  static const Color lightTertiary = Color(0xFFD9EDDF);

  /// Background color for screens
  static const Color lightBackground = Color(0xFFF1FCF6);

  /// Surface color for cards, sheets, menus
  static const Color lightSurface = Color(0xFFFFFFFF);

  /// Dimmed surface variant
  static const Color lightSurfaceDim = Color(0xFFE8F5ED);

  /// Bright surface variant
  static const Color lightSurfaceBright = Color(0xFFFFFFFF);

  /// Container color for filled elements
  static const Color lightSurfaceContainer = Color(0xFFEBF7F0);

  /// High emphasis container
  static const Color lightSurfaceContainerHigh = Color(0xFFD9EDDF);

  /// Highest emphasis container
  static const Color lightSurfaceContainerHighest = Color(0xFFC7E5D3);

  /// Text color on light backgrounds
  static const Color lightOnBackground = Color(0xFF1A1C1A);

  /// Text color on primary color
  static const Color lightOnPrimary = Color(0xFF003822);

  /// Text color on secondary color
  static const Color lightOnSecondary = Color(0xFFFFFFFF);

  /// Text color on tertiary color
  static const Color lightOnTertiary = Color(0xFF003822);

  /// Text color on surface
  static const Color lightOnSurface = Color(0xFF1A1C1A);

  /// Secondary text color on surface
  static const Color lightOnSurfaceVariant = Color(0xFF3F4945);

  // ==================== DARK THEME COLORS ====================

  /// Primary color for dark mode - Darker mint
  static const Color darkPrimary = Color(0xFF7AA58F);

  /// Secondary color for dark mode - Brighter green
  static const Color darkSecondary = Color(0xFF5CD9A6);

  /// Tertiary color for dark mode - Dark mint
  static const Color darkTertiary = Color(0xFF9CBBA8);

  /// Background color for dark mode
  static const Color darkBackground = Color(0xFF0F1410);

  /// Surface color for dark mode
  static const Color darkSurface = Color(0xFF1A1C1A);

  /// Dimmed surface for dark mode
  static const Color darkSurfaceDim = Color(0xFF0F1410);

  /// Bright surface for dark mode
  static const Color darkSurfaceBright = Color(0xFF3A3F3B);

  /// Container color for dark mode
  static const Color darkSurfaceContainer = Color(0xFF1E211E);

  /// High emphasis container for dark mode
  static const Color darkSurfaceContainerHigh = Color(0xFF282B28);

  /// Highest emphasis container for dark mode
  static const Color darkSurfaceContainerHighest = Color(0xFF333633);

  /// Text color on dark backgrounds
  static const Color darkOnBackground = Color(0xFFE1E3E0);

  /// Text color on dark primary
  static const Color darkOnPrimary = Color(0xFF003822);

  /// Text color on dark secondary
  static const Color darkOnSecondary = Color(0xFF003822);

  /// Text color on dark tertiary
  static const Color darkOnTertiary = Color(0xFF003822);

  /// Text color on dark surface
  static const Color darkOnSurface = Color(0xFFE1E3E0);

  /// Secondary text color on dark surface
  static const Color darkOnSurfaceVariant = Color(0xFFBFC9C2);

  // ==================== SEMANTIC COLORS ====================

  /// Success color - Green
  static const Color success = Color(0xFF00A76B);

  /// Light success container
  static const Color lightSuccessContainer = Color(0xFFD9EDDF);

  /// Dark success container
  static const Color darkSuccessContainer = Color(0xFF005234);

  /// Error color - Red
  static const Color error = Color(0xFFBA1A1A);

  /// Light error container
  static const Color lightErrorContainer = Color(0xFFFFDAD6);

  /// Dark error container
  static const Color darkErrorContainer = Color(0xFF93000A);

  /// Warning color - Orange/Amber
  static const Color warning = Color(0xFFFFB300);

  /// Light warning container
  static const Color lightWarningContainer = Color(0xFFFFECB3);

  /// Dark warning container
  static const Color darkWarningContainer = Color(0xFFE65100);

  /// Info color - Blue
  static const Color info = Color(0xFF2196F3);

  /// Light info container
  static const Color lightInfoContainer = Color(0xFFD1E4FF);

  /// Dark info container
  static const Color darkInfoContainer = Color(0xFF004A77);

  // ==================== TERTIARY CONTAINER COLORS ====================

  /// Light tertiary container
  static const Color lightTertiaryContainer = Color(0xFFD9EDDF);

  /// Dark tertiary container
  static const Color darkTertiaryContainer = Color(0xFF1E3A2A);

  // ==================== UTILITY COLORS ====================

  /// Outline color for borders (light)
  static const Color lightOutline = Color(0xFFB8D0C3);

  /// Outline variant for subtle borders (light)
  static const Color lightOutlineVariant = Color(0xFFD9EDDF);

  /// Outline color for borders (dark)
  static const Color darkOutline = Color(0xFF7AA58F);

  /// Outline variant for subtle borders (dark)
  static const Color darkOutlineVariant = Color(0xFF3F4945);

  /// Shadow color
  static const Color shadow = Color(0xFF000000);

  /// Scrim color for overlays
  static const Color scrim = Color(0xFF000000);

  /// Disabled color (light)
  static const Color lightDisabled = Color(0xFFBDBDBC);

  /// Disabled color (dark)
  static const Color darkDisabled = Color(0xFF5A5A52);

  // ==================== LEGACY SUPPORT ====================
  // Keeping old names for backward compatibility

  /// @deprecated Use lightPrimary instead
  static const Color primaryColor = lightPrimary;

  /// @deprecated Use lightSecondary instead
  static const Color secondaryColor = lightSecondary;

  /// @deprecated Use lightBackground instead
  static const Color backgroundColor = lightBackground;
}
