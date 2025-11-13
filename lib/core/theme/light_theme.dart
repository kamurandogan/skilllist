import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';
import 'app_text_styles.dart';
import 'color_schemes.dart';
import 'theme_extensions.dart';

/// Light theme configuration for the app
/// Uses Material 3 design with custom cream/black color scheme
ThemeData get lightTheme => ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  textTheme: AppTextStyles.textTheme,
  extensions: [AppThemeExtension.light],

  // ==================== APP BAR THEME ====================
  appBarTheme: AppBarTheme(
    centerTitle: false,
    elevation: 0,
    scrolledUnderElevation: AppDimensions.elevation1,
    backgroundColor: AppColors.lightBackground,
    foregroundColor: lightColorScheme.onSurface,
    titleTextStyle: AppTextStyles.titleLarge.copyWith(
      color: lightColorScheme.onSurface,
    ),
    iconTheme: IconThemeData(
      color: lightColorScheme.onSurface,
      size: AppDimensions.iconMedium,
    ),
  ),

  // ==================== CARD THEME ====================
  cardTheme: CardThemeData(
    elevation: AppDimensions.elevation0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
    ),
    color: lightColorScheme.surface,
    margin: const EdgeInsets.all(AppDimensions.spaceSm),
    clipBehavior: Clip.antiAlias,
  ),

  // ==================== INPUT DECORATION THEME ====================
  inputDecorationTheme: InputDecorationTheme(
    fillColor: lightColorScheme.surfaceContainer,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: AppDimensions.spaceMd,
      vertical: AppDimensions.spaceSm,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
      borderSide: BorderSide(
        color: lightColorScheme.outline,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
      borderSide: BorderSide(
        color: lightColorScheme.outline,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
      borderSide: BorderSide(
        color: lightColorScheme.primary,
        width: AppDimensions.borderWidthThick,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
      borderSide: BorderSide(
        color: lightColorScheme.error,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
      borderSide: BorderSide(
        color: lightColorScheme.error,
        width: AppDimensions.borderWidthThick,
      ),
    ),
    labelStyle: AppTextStyles.bodyMedium.copyWith(
      color: lightColorScheme.onSurfaceVariant,
    ),
    hintStyle: AppTextStyles.bodyMedium.copyWith(
      color: lightColorScheme.onSurfaceVariant,
    ),
    errorStyle: AppTextStyles.bodySmall.copyWith(
      color: lightColorScheme.error,
    ),
  ),

  // ==================== ELEVATED BUTTON THEME ====================
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: AppDimensions.elevation0,
      backgroundColor: lightColorScheme.secondary,
      foregroundColor: lightColorScheme.onSecondary,
      textStyle: AppTextStyles.labelLarge,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spaceLg,
        vertical: AppDimensions.spaceSm,
      ),
      minimumSize: const Size(
        0,
        AppDimensions.buttonHeightMedium,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
      ),
    ),
  ),

  // ==================== TEXT BUTTON THEME ====================
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: lightColorScheme.secondary,
      textStyle: AppTextStyles.labelLarge,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spaceMd,
        vertical: AppDimensions.spaceSm,
      ),
      minimumSize: const Size(
        0,
        AppDimensions.buttonHeightMedium,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
      ),
    ),
  ),

  // ==================== OUTLINED BUTTON THEME ====================
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: lightColorScheme.secondary,
      textStyle: AppTextStyles.labelLarge,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spaceLg,
        vertical: AppDimensions.spaceSm,
      ),
      minimumSize: const Size(
        0,
        AppDimensions.buttonHeightMedium,
      ),
      side: BorderSide(
        color: lightColorScheme.outline,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
      ),
    ),
  ),

  // ==================== ICON THEME ====================
  iconTheme: IconThemeData(
    color: lightColorScheme.onSurface,
    size: AppDimensions.iconMedium,
  ),

  // ==================== FLOATING ACTION BUTTON THEME ====================
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: lightColorScheme.secondary,
    foregroundColor: lightColorScheme.onSecondary,
    elevation: AppDimensions.elevation4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusLg),
    ),
  ),

  // ==================== DIALOG THEME ====================
  dialogTheme: DialogThemeData(
    backgroundColor: lightColorScheme.surface,
    elevation: AppDimensions.elevation6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusLg),
    ),
    titleTextStyle: AppTextStyles.headlineSmall.copyWith(
      color: lightColorScheme.onSurface,
    ),
    contentTextStyle: AppTextStyles.bodyMedium.copyWith(
      color: lightColorScheme.onSurfaceVariant,
    ),
  ),

  // ==================== BOTTOM SHEET THEME ====================
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: lightColorScheme.surface,
    elevation: AppDimensions.elevation8,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(AppDimensions.radiusLg),
      ),
    ),
    clipBehavior: Clip.antiAlias,
  ),

  // ==================== SNACKBAR THEME ====================
  snackBarTheme: SnackBarThemeData(
    backgroundColor: lightColorScheme.inverseSurface,
    contentTextStyle: AppTextStyles.bodyMedium.copyWith(
      color: lightColorScheme.onInverseSurface,
    ),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
    ),
  ),

  // ==================== NAVIGATION BAR THEME ====================
  navigationBarTheme: NavigationBarThemeData(
    height: AppDimensions.bottomNavHeight,
    elevation: AppDimensions.elevation2,
    backgroundColor: lightColorScheme.surface,
    indicatorColor: lightColorScheme.secondaryContainer,
    iconTheme: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return IconThemeData(
          color: lightColorScheme.onSecondaryContainer,
          size: AppDimensions.iconMedium,
        );
      }
      return IconThemeData(
        color: lightColorScheme.onSurfaceVariant,
        size: AppDimensions.iconMedium,
      );
    }),
    labelTextStyle: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppTextStyles.labelSmall.copyWith(
          color: lightColorScheme.onSurface,
        );
      }
      return AppTextStyles.labelSmall.copyWith(
        color: lightColorScheme.onSurfaceVariant,
      );
    }),
  ),

  // ==================== DIVIDER THEME ====================
  dividerTheme: DividerThemeData(
    color: lightColorScheme.outlineVariant,
    thickness: AppDimensions.dividerThickness,
    space: AppDimensions.spaceMd,
  ),

  // ==================== CHIP THEME ====================
  chipTheme: ChipThemeData(
    backgroundColor: lightColorScheme.surfaceContainer,
    deleteIconColor: lightColorScheme.onSurfaceVariant,
    labelStyle: AppTextStyles.labelMedium.copyWith(
      color: lightColorScheme.onSurface,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: AppDimensions.spaceSm,
      vertical: AppDimensions.spaceXs,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
    ),
  ),

  // ==================== SWITCH THEME ====================
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return lightColorScheme.onPrimary;
      }
      return lightColorScheme.outline;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return lightColorScheme.primary;
      }
      return lightColorScheme.surfaceContainerHighest;
    }),
  ),

  // ==================== CHECKBOX THEME ====================
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return lightColorScheme.secondary;
      }
      return Colors.transparent;
    }),
    checkColor: WidgetStateProperty.all(lightColorScheme.onSecondary),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusXs),
    ),
  ),

  // ==================== RADIO THEME ====================
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return lightColorScheme.secondary;
      }
      return lightColorScheme.onSurfaceVariant;
    }),
  ),

  // ==================== SLIDER THEME ====================
  sliderTheme: SliderThemeData(
    activeTrackColor: lightColorScheme.secondary,
    inactiveTrackColor: lightColorScheme.surfaceContainerHighest,
    thumbColor: lightColorScheme.secondary,
    overlayColor: lightColorScheme.secondary.withValues(alpha: 0.12),
    valueIndicatorColor: lightColorScheme.secondary,
    valueIndicatorTextStyle: AppTextStyles.labelSmall.copyWith(
      color: lightColorScheme.onSecondary,
    ),
  ),

  // ==================== PROGRESS INDICATOR THEME ====================
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: lightColorScheme.secondary,
    linearTrackColor: lightColorScheme.surfaceContainerHighest,
    circularTrackColor: lightColorScheme.surfaceContainerHighest,
  ),

  // ==================== LIST TILE THEME ====================
  listTileTheme: ListTileThemeData(
    contentPadding: const EdgeInsets.symmetric(
      horizontal: AppDimensions.spaceMd,
      vertical: AppDimensions.spaceXs,
    ),
    minVerticalPadding: AppDimensions.spaceXs,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
    ),
    tileColor: Colors.transparent,
    selectedTileColor: lightColorScheme.surfaceContainer,
    iconColor: lightColorScheme.onSurfaceVariant,
    textColor: lightColorScheme.onSurface,
  ),

  // ==================== TOOLTIP THEME ====================
  tooltipTheme: TooltipThemeData(
    decoration: BoxDecoration(
      color: lightColorScheme.inverseSurface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusXs),
    ),
    textStyle: AppTextStyles.bodySmall.copyWith(
      color: lightColorScheme.onInverseSurface,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: AppDimensions.spaceSm,
      vertical: AppDimensions.spaceXs,
    ),
  ),

  // ==================== GENERAL SETTINGS ====================
  scaffoldBackgroundColor: AppColors.lightBackground,
  disabledColor: lightColorScheme.onSurface.withValues(
    alpha: AppDimensions.opacityDisabled,
  ),
  splashColor: lightColorScheme.secondary.withValues(alpha: 0.12),
  highlightColor: lightColorScheme.secondary.withValues(alpha: 0.08),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
