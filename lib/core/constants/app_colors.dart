import 'dart:ui';

/// Application color palette
/// Contains all colors used throughout the app for light and dark themes
class AppColors {
  AppColors._();

  // ==================== LIGHT THEME COLORS ====================

  /// Primary brand color - Cream/Off-white
  static const Color lightPrimary = Color(0xFFf7f6f0);

  /// Secondary brand color - Black
  static const Color lightSecondary = Color(0xFF000000);

  /// Background color for screens
  static const Color lightBackground = Color(0xFFF6F7F7);

  /// Surface color for cards, sheets, menus
  static const Color lightSurface = Color(0xFFFFFFFF);

  /// Dimmed surface variant
  static const Color lightSurfaceDim = Color(0xFFE8E7E1);

  /// Bright surface variant
  static const Color lightSurfaceBright = Color(0xFFFFFFFF);

  /// Container color for filled elements
  static const Color lightSurfaceContainer = Color(0xFFF0EFE9);

  /// Text color on light backgrounds
  static const Color lightOnBackground = Color(0xFF1C1C1C);

  /// Text color on primary color
  static const Color lightOnPrimary = Color(0xFF000000);

  /// Text color on secondary color
  static const Color lightOnSecondary = Color(0xFFFFFFFF);

  /// Text color on surface
  static const Color lightOnSurface = Color(0xFF1C1C1C);

  // ==================== DARK THEME COLORS ====================

  /// Primary color for dark mode - Dark cream/beige
  static const Color darkPrimary = Color(0xFF3D3D38);

  /// Secondary color for dark mode - Light cream
  static const Color darkSecondary = Color(0xFFf7f6f0);

  /// Background color for dark mode
  static const Color darkBackground = Color(0xFF1A1A18);

  /// Surface color for dark mode
  static const Color darkSurface = Color(0xFF242422);

  /// Dimmed surface for dark mode
  static const Color darkSurfaceDim = Color(0xFF1A1A18);

  /// Bright surface for dark mode
  static const Color darkSurfaceBright = Color(0xFF3A3A38);

  /// Container color for dark mode
  static const Color darkSurfaceContainer = Color(0xFF2E2E2C);

  /// Text color on dark backgrounds
  static const Color darkOnBackground = Color(0xFFE8E7E1);

  /// Text color on dark primary
  static const Color darkOnPrimary = Color(0xFFFFFFFF);

  /// Text color on dark secondary
  static const Color darkOnSecondary = Color(0xFF000000);

  /// Text color on dark surface
  static const Color darkOnSurface = Color(0xFFE8E7E1);

  // ==================== SEMANTIC COLORS ====================

  /// Success color - Green
  static const Color success = Color(0xFF4CAF50);

  /// Light success container
  static const Color lightSuccessContainer = Color(0xFFE8F5E9);

  /// Dark success container
  static const Color darkSuccessContainer = Color(0xFF1B5E20);

  /// Error color - Red
  static const Color error = Color(0xFFEF5350);

  /// Light error container
  static const Color lightErrorContainer = Color(0xFFFFEBEE);

  /// Dark error container
  static const Color darkErrorContainer = Color(0xFFB71C1C);

  /// Warning color - Orange
  static const Color warning = Color(0xFFFF9800);

  /// Light warning container
  static const Color lightWarningContainer = Color(0xFFFFF3E0);

  /// Dark warning container
  static const Color darkWarningContainer = Color(0xFFE65100);

  /// Info color - Blue
  static const Color info = Color(0xFF2196F3);

  /// Light info container
  static const Color lightInfoContainer = Color(0xFFE3F2FD);

  /// Dark info container
  static const Color darkInfoContainer = Color(0xFF0D47A1);

  // ==================== ACCENT/TERTIARY COLORS ====================

  /// Tertiary color - Muted olive/green tone
  static const Color lightTertiary = Color(0xFF8B8B7A);

  /// Dark tertiary color
  static const Color darkTertiary = Color(0xFFB5B5A0);

  /// Light tertiary container
  static const Color lightTertiaryContainer = Color(0xFFE8E8DD);

  /// Dark tertiary container
  static const Color darkTertiaryContainer = Color(0xFF4A4A40);

  // ==================== UTILITY COLORS ====================

  /// Outline color for borders (light)
  static const Color lightOutline = Color(0xFFCACAC0);

  /// Outline color for borders (dark)
  static const Color darkOutline = Color(0xFF4A4A42);

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
