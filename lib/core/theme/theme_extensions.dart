import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

/// Custom theme extension for app-specific colors and properties
/// not included in Material 3's ColorScheme
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  /// Success color for positive actions/states
  final Color successColor;

  /// Warning color for cautionary actions/states
  final Color warningColor;

  /// Info color for informational actions/states
  final Color infoColor;

  /// Container color for success states
  final Color successContainer;

  /// Container color for warning states
  final Color warningContainer;

  /// Container color for info states
  final Color infoContainer;

  /// Disabled color for inactive elements
  final Color disabledColor;

  /// Primary gradient (optional)
  final Gradient? primaryGradient;

  /// Secondary gradient (optional)
  final Gradient? secondaryGradient;

  /// Card shadow color
  final Color cardShadow;

  /// Bottom shadow for elevated components
  final List<BoxShadow>? elevatedShadow;

  const AppThemeExtension({
    required this.successColor,
    required this.warningColor,
    required this.infoColor,
    required this.successContainer,
    required this.warningContainer,
    required this.infoContainer,
    required this.disabledColor,
    required this.cardShadow,
    this.primaryGradient,
    this.secondaryGradient,
    this.elevatedShadow,
  });

  /// Light theme extension
  static AppThemeExtension get light => AppThemeExtension(
        successColor: AppColors.success,
        warningColor: AppColors.warning,
        infoColor: AppColors.info,
        successContainer: AppColors.lightSuccessContainer,
        warningContainer: AppColors.lightWarningContainer,
        infoContainer: AppColors.lightInfoContainer,
        disabledColor: AppColors.lightDisabled,
        cardShadow: AppColors.shadow.withValues(alpha: 0.1),
        elevatedShadow: [
          BoxShadow(
            color: AppColors.shadow.withValues(alpha: 0.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      );

  /// Dark theme extension
  static AppThemeExtension get dark => AppThemeExtension(
        successColor: AppColors.success,
        warningColor: AppColors.warning,
        infoColor: AppColors.info,
        successContainer: AppColors.darkSuccessContainer,
        warningContainer: AppColors.darkWarningContainer,
        infoContainer: AppColors.darkInfoContainer,
        disabledColor: AppColors.darkDisabled,
        cardShadow: AppColors.shadow.withValues(alpha: 0.3),
        elevatedShadow: [
          BoxShadow(
            color: AppColors.shadow.withValues(alpha: 0.2),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      );

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    Color? successColor,
    Color? warningColor,
    Color? infoColor,
    Color? successContainer,
    Color? warningContainer,
    Color? infoContainer,
    Color? disabledColor,
    Gradient? primaryGradient,
    Gradient? secondaryGradient,
    Color? cardShadow,
    List<BoxShadow>? elevatedShadow,
  }) {
    return AppThemeExtension(
      successColor: successColor ?? this.successColor,
      warningColor: warningColor ?? this.warningColor,
      infoColor: infoColor ?? this.infoColor,
      successContainer: successContainer ?? this.successContainer,
      warningContainer: warningContainer ?? this.warningContainer,
      infoContainer: infoContainer ?? this.infoContainer,
      disabledColor: disabledColor ?? this.disabledColor,
      primaryGradient: primaryGradient ?? this.primaryGradient,
      secondaryGradient: secondaryGradient ?? this.secondaryGradient,
      cardShadow: cardShadow ?? this.cardShadow,
      elevatedShadow: elevatedShadow ?? this.elevatedShadow,
    );
  }

  @override
  ThemeExtension<AppThemeExtension> lerp(
    covariant ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) {
      return this;
    }

    return AppThemeExtension(
      successColor: Color.lerp(successColor, other.successColor, t)!,
      warningColor: Color.lerp(warningColor, other.warningColor, t)!,
      infoColor: Color.lerp(infoColor, other.infoColor, t)!,
      successContainer:
          Color.lerp(successContainer, other.successContainer, t)!,
      warningContainer:
          Color.lerp(warningContainer, other.warningContainer, t)!,
      infoContainer: Color.lerp(infoContainer, other.infoContainer, t)!,
      disabledColor: Color.lerp(disabledColor, other.disabledColor, t)!,
      primaryGradient:
          Gradient.lerp(primaryGradient, other.primaryGradient, t),
      secondaryGradient:
          Gradient.lerp(secondaryGradient, other.secondaryGradient, t),
      cardShadow: Color.lerp(cardShadow, other.cardShadow, t)!,
      elevatedShadow: BoxShadow.lerpList(elevatedShadow, other.elevatedShadow, t),
    );
  }
}

/// Extension method to easily access AppThemeExtension from BuildContext
extension ThemeExtensionGetter on BuildContext {
  /// Get custom theme extension
  AppThemeExtension get appTheme =>
      Theme.of(this).extension<AppThemeExtension>() ??
      AppThemeExtension.light;
}
