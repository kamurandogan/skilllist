import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

/// Material 3 ColorScheme definitions for light and dark themes
/// Based on the app's green/mint color palette

/// Light theme color scheme
const ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,

  // Primary colors - Soft mint green
  primary: AppColors.lightPrimary,
  onPrimary: AppColors.lightOnPrimary,
  primaryContainer: AppColors.lightTertiaryContainer,
  onPrimaryContainer: AppColors.lightOnTertiary,

  // Secondary colors - Vibrant green
  secondary: AppColors.lightSecondary,
  onSecondary: AppColors.lightOnSecondary,
  secondaryContainer: AppColors.lightSuccessContainer,
  onSecondaryContainer: AppColors.lightOnTertiary,

  // Tertiary colors - Very light mint
  tertiary: AppColors.lightTertiary,
  onTertiary: AppColors.lightOnTertiary,
  tertiaryContainer: AppColors.lightTertiaryContainer,
  onTertiaryContainer: AppColors.lightOnTertiary,

  // Error colors
  error: AppColors.error,
  onError: Colors.white,
  errorContainer: AppColors.lightErrorContainer,
  onErrorContainer: Color(0xFF410002),

  // Surface colors
  surface: AppColors.lightSurface,
  onSurface: AppColors.lightOnSurface,
  surfaceDim: AppColors.lightSurfaceDim,
  surfaceBright: AppColors.lightSurfaceBright,
  surfaceContainerLowest: Colors.white,
  surfaceContainerLow: AppColors.lightSurfaceBright,
  surfaceContainer: AppColors.lightSurfaceContainer,
  surfaceContainerHigh: AppColors.lightSurfaceContainerHigh,
  surfaceContainerHighest: AppColors.lightSurfaceContainerHighest,
  onSurfaceVariant: AppColors.lightOnSurfaceVariant,

  // Outline colors
  outline: AppColors.lightOutline,
  outlineVariant: AppColors.lightOutlineVariant,

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

  // Primary colors - Darker mint
  primary: AppColors.darkPrimary,
  onPrimary: AppColors.darkOnPrimary,
  primaryContainer: AppColors.darkTertiaryContainer,
  onPrimaryContainer: AppColors.darkOnTertiary,

  // Secondary colors - Brighter green
  secondary: AppColors.darkSecondary,
  onSecondary: AppColors.darkOnSecondary,
  secondaryContainer: AppColors.darkSuccessContainer,
  onSecondaryContainer: AppColors.darkOnTertiary,

  // Tertiary colors - Dark mint
  tertiary: AppColors.darkTertiary,
  onTertiary: AppColors.darkOnTertiary,
  tertiaryContainer: AppColors.darkTertiaryContainer,
  onTertiaryContainer: AppColors.darkOnTertiary,

  // Error colors
  error: AppColors.error,
  onError: Colors.white,
  errorContainer: AppColors.darkErrorContainer,
  onErrorContainer: Color(0xFFFFDAD6),

  // Surface colors
  surface: AppColors.darkSurface,
  onSurface: AppColors.darkOnSurface,
  surfaceDim: AppColors.darkSurfaceDim,
  surfaceBright: AppColors.darkSurfaceBright,
  surfaceContainerLowest: AppColors.darkBackground,
  surfaceContainerLow: AppColors.darkSurface,
  surfaceContainer: AppColors.darkSurfaceContainer,
  surfaceContainerHigh: AppColors.darkSurfaceContainerHigh,
  surfaceContainerHighest: AppColors.darkSurfaceContainerHighest,
  onSurfaceVariant: AppColors.darkOnSurfaceVariant,

  // Outline colors
  outline: AppColors.darkOutline,
  outlineVariant: AppColors.darkOutlineVariant,

  // Shadow and scrim
  shadow: AppColors.shadow,
  scrim: AppColors.scrim,

  // Inverse colors (for inverted components)
  inverseSurface: AppColors.darkOnSurface,
  onInverseSurface: AppColors.darkSurface,
  inversePrimary: AppColors.lightPrimary,
);
