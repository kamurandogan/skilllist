import 'package:flutter/material.dart';

import '../constants/app_dimensions.dart';
import '../theme/app_text_styles.dart';

/// Reusable AppBar widget for the application
/// Implements PreferredSizeWidget to be used in Scaffold
class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    required this.title,
    this.actions,
    this.leading,
    this.centerTitle = false,
    this.elevation,
    this.backgroundColor,
    this.foregroundColor,
    super.key,
  });

  /// Title of the app bar
  final String title;

  /// Actions to display at the end of the app bar
  final List<Widget>? actions;

  /// Leading widget (usually back button or menu icon)
  final Widget? leading;

  /// Whether to center the title
  final bool centerTitle;

  /// Elevation of the app bar
  final double? elevation;

  /// Background color override
  final Color? backgroundColor;

  /// Foreground color override (affects text and icons)
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      title: Text(
        title,
        style: AppTextStyles.titleLarge.copyWith(
          color: foregroundColor ?? theme.colorScheme.onSurface,
        ),
      ),
      centerTitle: centerTitle,
      elevation: elevation ?? 0,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      leading: leading,
      actions: actions,
      iconTheme: IconThemeData(
        color: foregroundColor ?? theme.colorScheme.onSurface,
        size: AppDimensions.iconMedium,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
