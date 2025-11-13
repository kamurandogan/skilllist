import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

/// Material 3 ColorScheme definitions for light and dark themes
/// Based on the app's cream/black color palette

/// Light theme color scheme
const ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,

  // Primary colors
  primary: AppColors.lightPrimary,
  onPrimary: AppColors.lightOnPrimary,
  primaryContainer: AppColors.lightSurfaceContainer,
  onPrimaryContainer: AppColors.lightOnSurface,

  // Secondary colors
  secondary: AppColors.lightSecondary,
  onSecondary: AppColors.lightOnSecondary,
  secondaryContainer: AppColors.lightSurfaceDim,
  onSecondaryContainer: AppColors.lightOnSurface,

  // Tertiary colors
  tertiary: AppColors.lightTertiary,
  onTertiary: AppColors.lightOnPrimary,
  tertiaryContainer: AppColors.lightTertiaryContainer,
  onTertiaryContainer: AppColors.lightOnSurface,

  // Error colors
  error: AppColors.error,
  onError: Colors.white,
  errorContainer: AppColors.lightErrorContainer,
  onErrorContainer: Color(0xFF8B0000),

  // Surface colors
  surface: AppColors.lightSurface,
  onSurface: AppColors.lightOnSurface,
  surfaceDim: AppColors.lightSurfaceDim,
  surfaceBright: AppColors.lightSurfaceBright,
  surfaceContainerLowest: Colors.white,
  surfaceContainerLow: AppColors.lightSurfaceBright,
  surfaceContainer: AppColors.lightSurfaceContainer,
  surfaceContainerHigh: AppColors.lightSurfaceDim,
  surfaceContainerHighest: AppColors.lightSurfaceDim,
  onSurfaceVariant: Color(0xFF5A5A52),

  // Outline colors
  outline: AppColors.lightOutline,
  outlineVariant: Color(0xFFE0E0D8),

  // Shadow and scrim
  shadow: AppColors.shadow,
  scrim: AppColors.scrim,

  // Inverse colors (for inverted components)
  inverseSurface: AppColors.lightOnSurface,
  onInverseSurface: AppColors.lightSurface,
  inversePrimary: AppColors.darkPrimary,
);

/// Dark theme color scheme
const ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,

  // Primary colors
  primary: AppColors.darkPrimary,
  onPrimary: AppColors.darkOnPrimary,
  primaryContainer: AppColors.darkSurfaceContainer,
  onPrimaryContainer: AppColors.darkOnSurface,

  // Secondary colors
  secondary: AppColors.darkSecondary,
  onSecondary: AppColors.darkOnSecondary,
  secondaryContainer: AppColors.darkSurfaceBright,
  onSecondaryContainer: AppColors.darkOnSurface,

  // Tertiary colors
  tertiary: AppColors.darkTertiary,
  onTertiary: AppColors.darkOnPrimary,
  tertiaryContainer: AppColors.darkTertiaryContainer,
  onTertiaryContainer: AppColors.darkOnSurface,

  // Error colors
  error: AppColors.error,
  onError: Colors.white,
  errorContainer: AppColors.darkErrorContainer,
  onErrorContainer: Color(0xFFFFCDD2),

  // Surface colors
  surface: AppColors.darkSurface,
  onSurface: AppColors.darkOnSurface,
  surfaceDim: AppColors.darkSurfaceDim,
  surfaceBright: AppColors.darkSurfaceBright,
  surfaceContainerLowest: AppColors.darkBackground,
  surfaceContainerLow: AppColors.darkSurface,
  surfaceContainer: AppColors.darkSurfaceContainer,
  surfaceContainerHigh: AppColors.darkSurfaceBright,
  surfaceContainerHighest: Color(0xFF3E3E3C),
  onSurfaceVariant: Color(0xFFB5B5A8),

  // Outline colors
  outline: AppColors.darkOutline,
  outlineVariant: Color(0xFF3A3A34),

  // Shadow and scrim
  shadow: AppColors.shadow,
  scrim: AppColors.scrim,

  // Inverse colors (for inverted components)
  inverseSurface: AppColors.darkOnSurface,
  onInverseSurface: AppColors.darkSurface,
  inversePrimary: AppColors.lightPrimary,
);
