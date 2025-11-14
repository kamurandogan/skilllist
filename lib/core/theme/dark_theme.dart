import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';
import 'app_text_styles.dart';
import 'color_schemes.dart';
import 'theme_extensions.dart';

/// Dark theme configuration for the app
/// Uses Material 3 design with custom green/mint dark color scheme
ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      textTheme: AppTextStyles.textTheme,
      extensions: [AppThemeExtension.dark],

      // ==================== APP BAR THEME ====================
      appBarTheme: AppBarTheme(
        centerTitle: false,
        elevation: 0,
        scrolledUnderElevation: AppDimensions.elevation2,
        backgroundColor: AppColors.darkBackground,
        foregroundColor: darkColorScheme.onSurface,
        titleTextStyle: AppTextStyles.titleLarge.copyWith(
          color: darkColorScheme.onSurface,
        ),
        iconTheme: IconThemeData(
          color: darkColorScheme.onSurface,
          size: AppDimensions.iconMedium,
        ),
      ),

      // ==================== CARD THEME ====================
      cardTheme: CardThemeData(
        elevation: AppDimensions.elevation3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
        ),
        color: darkColorScheme.surface,
        margin: const EdgeInsets.all(AppDimensions.spaceSm),
        clipBehavior: Clip.antiAlias,
      ),

      // ==================== INPUT DECORATION THEME ====================
      inputDecorationTheme: InputDecorationTheme(
        fillColor: darkColorScheme.surfaceContainer,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spaceMd,
          vertical: AppDimensions.spaceSm,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
          borderSide: BorderSide(
            color: darkColorScheme.outline,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
          borderSide: BorderSide(
            color: darkColorScheme.outline,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
          borderSide: BorderSide(
            color: darkColorScheme.primary,
            width: AppDimensions.borderWidthThick,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
          borderSide: BorderSide(
            color: darkColorScheme.error,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
          borderSide: BorderSide(
            color: darkColorScheme.error,
            width: AppDimensions.borderWidthThick,
          ),
        ),
        labelStyle: AppTextStyles.bodyMedium.copyWith(
          color: darkColorScheme.onSurfaceVariant,
        ),
        hintStyle: AppTextStyles.bodyMedium.copyWith(
          color: darkColorScheme.onSurfaceVariant,
        ),
        errorStyle: AppTextStyles.bodySmall.copyWith(
          color: darkColorScheme.error,
        ),
      ),

      // ==================== ELEVATED BUTTON THEME ====================
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: AppDimensions.elevation3,
          backgroundColor: darkColorScheme.secondary,
          foregroundColor: darkColorScheme.onSecondary,
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
          foregroundColor: darkColorScheme.secondary,
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
          foregroundColor: darkColorScheme.secondary,
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
            color: darkColorScheme.outline,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
          ),
        ),
      ),

      // ==================== ICON THEME ====================
      iconTheme: IconThemeData(
        color: darkColorScheme.onSurface,
        size: AppDimensions.iconMedium,
      ),

      // ==================== FLOATING ACTION BUTTON THEME ====================
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: darkColorScheme.secondary,
        foregroundColor: darkColorScheme.onSecondary,
        elevation: AppDimensions.elevation6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLg),
        ),
      ),

      // ==================== DIALOG THEME ====================
      dialogTheme: DialogThemeData(
        backgroundColor: darkColorScheme.surface,
        elevation: AppDimensions.elevation8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLg),
        ),
        titleTextStyle: AppTextStyles.headlineSmall.copyWith(
          color: darkColorScheme.onSurface,
        ),
        contentTextStyle: AppTextStyles.bodyMedium.copyWith(
          color: darkColorScheme.onSurfaceVariant,
        ),
      ),

      // ==================== BOTTOM SHEET THEME ====================
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkColorScheme.surface,
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
        backgroundColor: darkColorScheme.inverseSurface,
        contentTextStyle: AppTextStyles.bodyMedium.copyWith(
          color: darkColorScheme.onInverseSurface,
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusSm),
        ),
      ),

      // ==================== NAVIGATION BAR THEME ====================
      navigationBarTheme: NavigationBarThemeData(
        height: AppDimensions.bottomNavHeight,
        elevation: AppDimensions.elevation3,
        backgroundColor: darkColorScheme.surface,
        indicatorColor: darkColorScheme.secondaryContainer,
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(
              color: darkColorScheme.onSecondaryContainer,
              size: AppDimensions.iconMedium,
            );
          }
          return IconThemeData(
            color: darkColorScheme.onSurfaceVariant,
            size: AppDimensions.iconMedium,
          );
        }),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppTextStyles.labelSmall.copyWith(
              color: darkColorScheme.onSurface,
            );
          }
          return AppTextStyles.labelSmall.copyWith(
            color: darkColorScheme.onSurfaceVariant,
          );
        }),
      ),

      // ==================== DIVIDER THEME ====================
      dividerTheme: DividerThemeData(
        color: darkColorScheme.outlineVariant,
        thickness: AppDimensions.dividerThickness,
        space: AppDimensions.spaceMd,
      ),

      // ==================== CHIP THEME ====================
      chipTheme: ChipThemeData(
        backgroundColor: darkColorScheme.surfaceContainer,
        deleteIconColor: darkColorScheme.onSurfaceVariant,
        labelStyle: AppTextStyles.labelMedium.copyWith(
          color: darkColorScheme.onSurface,
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
            return darkColorScheme.onPrimary;
          }
          return darkColorScheme.outline;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return darkColorScheme.primary;
          }
          return darkColorScheme.surfaceContainerHighest;
        }),
      ),

      // ==================== CHECKBOX THEME ====================
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return darkColorScheme.secondary;
          }
          return Colors.transparent;
        }),
        checkColor: WidgetStateProperty.all(darkColorScheme.onSecondary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusXs),
        ),
      ),

      // ==================== RADIO THEME ====================
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return darkColorScheme.secondary;
          }
          return darkColorScheme.onSurfaceVariant;
        }),
      ),

      // ==================== SLIDER THEME ====================
      sliderTheme: SliderThemeData(
        activeTrackColor: darkColorScheme.secondary,
        inactiveTrackColor: darkColorScheme.surfaceContainerHighest,
        thumbColor: darkColorScheme.secondary,
        overlayColor: darkColorScheme.secondary.withValues(alpha: 0.12),
        valueIndicatorColor: darkColorScheme.secondary,
        valueIndicatorTextStyle: AppTextStyles.labelSmall.copyWith(
          color: darkColorScheme.onSecondary,
        ),
      ),

      // ==================== PROGRESS INDICATOR THEME ====================
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: darkColorScheme.secondary,
        linearTrackColor: darkColorScheme.surfaceContainerHighest,
        circularTrackColor: darkColorScheme.surfaceContainerHighest,
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
        selectedTileColor: darkColorScheme.surfaceContainer,
        iconColor: darkColorScheme.onSurfaceVariant,
        textColor: darkColorScheme.onSurface,
      ),

      // ==================== TOOLTIP THEME ====================
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: darkColorScheme.inverseSurface,
          borderRadius: BorderRadius.circular(AppDimensions.radiusXs),
        ),
        textStyle: AppTextStyles.bodySmall.copyWith(
          color: darkColorScheme.onInverseSurface,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spaceSm,
          vertical: AppDimensions.spaceXs,
        ),
      ),

      // ==================== GENERAL SETTINGS ====================
      scaffoldBackgroundColor: AppColors.darkBackground,
      disabledColor: darkColorScheme.onSurface.withValues(
        alpha: AppDimensions.opacityDisabled,
      ),
      splashColor: darkColorScheme.secondary.withValues(alpha: 0.12),
      highlightColor: darkColorScheme.secondary.withValues(alpha: 0.08),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
