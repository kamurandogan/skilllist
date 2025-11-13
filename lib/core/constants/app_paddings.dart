import 'package:flutter/material.dart';

import 'app_dimensions.dart';

/// Application padding constants
/// Pre-defined EdgeInsets for common padding scenarios
/// Based on AppDimensions spacing values
class AppPaddings {
  AppPaddings._();

  // ==================== ALL SIDES EQUAL ====================

  /// Extra small padding (4px all sides)
  static const EdgeInsets xs = EdgeInsets.all(AppDimensions.spaceXs);

  /// Small padding (8px all sides)
  static const EdgeInsets sm = EdgeInsets.all(AppDimensions.spaceSm);

  /// Medium padding (16px all sides) - Most common
  static const EdgeInsets md = EdgeInsets.all(AppDimensions.spaceMd);

  /// Large padding (24px all sides)
  static const EdgeInsets lg = EdgeInsets.all(AppDimensions.spaceLg);

  /// Extra large padding (32px all sides)
  static const EdgeInsets xl = EdgeInsets.all(AppDimensions.spaceXl);

  /// Extra extra large padding (48px all sides)
  static const EdgeInsets xxl = EdgeInsets.all(AppDimensions.spaceXxl);

  // ==================== HORIZONTAL PADDING ====================

  /// Extra small horizontal padding (4px left & right)
  static const EdgeInsets horizontalXs = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceXs,
  );

  /// Small horizontal padding (8px left & right)
  static const EdgeInsets horizontalSm = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceSm,
  );

  /// Medium horizontal padding (16px left & right)
  static const EdgeInsets horizontalMd = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceMd,
  );

  /// Large horizontal padding (24px left & right)
  static const EdgeInsets horizontalLg = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceLg,
  );

  /// Extra large horizontal padding (32px left & right)
  static const EdgeInsets horizontalXl = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceXl,
  );

  /// Extra extra large horizontal padding (48px left & right)
  static const EdgeInsets horizontalXxl = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceXxl,
  );

  // ==================== VERTICAL PADDING ====================

  /// Extra small vertical padding (4px top & bottom)
  static const EdgeInsets verticalXs = EdgeInsets.symmetric(
    vertical: AppDimensions.spaceXs,
  );

  /// Small vertical padding (8px top & bottom)
  static const EdgeInsets verticalSm = EdgeInsets.symmetric(
    vertical: AppDimensions.spaceSm,
  );

  /// Medium vertical padding (16px top & bottom)
  static const EdgeInsets verticalMd = EdgeInsets.symmetric(
    vertical: AppDimensions.spaceMd,
  );

  /// Large vertical padding (24px top & bottom)
  static const EdgeInsets verticalLg = EdgeInsets.symmetric(
    vertical: AppDimensions.spaceLg,
  );

  /// Extra large vertical padding (32px top & bottom)
  static const EdgeInsets verticalXl = EdgeInsets.symmetric(
    vertical: AppDimensions.spaceXl,
  );

  /// Extra extra large vertical padding (48px top & bottom)
  static const EdgeInsets verticalXxl = EdgeInsets.symmetric(
    vertical: AppDimensions.spaceXxl,
  );

  // ==================== TOP PADDING ONLY ====================

  /// Extra small top padding
  static const EdgeInsets topXs = EdgeInsets.only(top: AppDimensions.spaceXs);

  /// Small top padding
  static const EdgeInsets topSm = EdgeInsets.only(top: AppDimensions.spaceSm);

  /// Medium top padding
  static const EdgeInsets topMd = EdgeInsets.only(top: AppDimensions.spaceMd);

  /// Large top padding
  static const EdgeInsets topLg = EdgeInsets.only(top: AppDimensions.spaceLg);

  /// Extra large top padding
  static const EdgeInsets topXl = EdgeInsets.only(top: AppDimensions.spaceXl);

  /// Extra extra large top padding
  static const EdgeInsets topXxl = EdgeInsets.only(top: AppDimensions.spaceXxl);

  // ==================== BOTTOM PADDING ONLY ====================

  /// Extra small bottom padding
  static const EdgeInsets bottomXs = EdgeInsets.only(
    bottom: AppDimensions.spaceXs,
  );

  /// Small bottom padding
  static const EdgeInsets bottomSm = EdgeInsets.only(
    bottom: AppDimensions.spaceSm,
  );

  /// Medium bottom padding
  static const EdgeInsets bottomMd = EdgeInsets.only(
    bottom: AppDimensions.spaceMd,
  );

  /// Large bottom padding
  static const EdgeInsets bottomLg = EdgeInsets.only(
    bottom: AppDimensions.spaceLg,
  );

  /// Extra large bottom padding
  static const EdgeInsets bottomXl = EdgeInsets.only(
    bottom: AppDimensions.spaceXl,
  );

  /// Extra extra large bottom padding
  static const EdgeInsets bottomXxl = EdgeInsets.only(
    bottom: AppDimensions.spaceXxl,
  );

  // ==================== LEFT PADDING ONLY ====================

  /// Extra small left padding
  static const EdgeInsets leftXs = EdgeInsets.only(
    left: AppDimensions.spaceXs,
  );

  /// Small left padding
  static const EdgeInsets leftSm = EdgeInsets.only(
    left: AppDimensions.spaceSm,
  );

  /// Medium left padding
  static const EdgeInsets leftMd = EdgeInsets.only(
    left: AppDimensions.spaceMd,
  );

  /// Large left padding
  static const EdgeInsets leftLg = EdgeInsets.only(
    left: AppDimensions.spaceLg,
  );

  /// Extra large left padding
  static const EdgeInsets leftXl = EdgeInsets.only(
    left: AppDimensions.spaceXl,
  );

  /// Extra extra large left padding
  static const EdgeInsets leftXxl = EdgeInsets.only(
    left: AppDimensions.spaceXxl,
  );

  // ==================== RIGHT PADDING ONLY ====================

  /// Extra small right padding
  static const EdgeInsets rightXs = EdgeInsets.only(
    right: AppDimensions.spaceXs,
  );

  /// Small right padding
  static const EdgeInsets rightSm = EdgeInsets.only(
    right: AppDimensions.spaceSm,
  );

  /// Medium right padding
  static const EdgeInsets rightMd = EdgeInsets.only(
    right: AppDimensions.spaceMd,
  );

  /// Large right padding
  static const EdgeInsets rightLg = EdgeInsets.only(
    right: AppDimensions.spaceLg,
  );

  /// Extra large right padding
  static const EdgeInsets rightXl = EdgeInsets.only(
    right: AppDimensions.spaceXl,
  );

  /// Extra extra large right padding
  static const EdgeInsets rightXxl = EdgeInsets.only(
    right: AppDimensions.spaceXxl,
  );

  // ==================== CUSTOM COMMON PATTERNS ====================

  /// Standard page padding (horizontal screen edges)
  /// Used for page content that shouldn't touch screen edges
  static const EdgeInsets page = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceMd,
    vertical: AppDimensions.spaceMd,
  );

  /// Page horizontal padding only
  static const EdgeInsets pageHorizontal = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceMd,
  );

  /// Card internal padding
  /// Used inside cards for content spacing
  static const EdgeInsets card = EdgeInsets.all(AppDimensions.spaceMd);

  /// List item padding
  /// Used for list items with consistent spacing
  static const EdgeInsets listItem = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceMd,
    vertical: AppDimensions.spaceSm,
  );

  /// List tile padding (larger vertical)
  static const EdgeInsets listTile = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceMd,
    vertical: AppDimensions.spaceMd,
  );

  /// Form field padding
  /// Used for spacing between form fields
  static const EdgeInsets formField = EdgeInsets.symmetric(
    vertical: AppDimensions.spaceSm,
  );

  /// Dialog padding
  /// Used for dialog content
  static const EdgeInsets dialog = EdgeInsets.all(AppDimensions.spaceLg);

  /// Section padding
  /// Used for separating major sections
  static const EdgeInsets section = EdgeInsets.symmetric(
    vertical: AppDimensions.spaceLg,
  );

  /// Section with horizontal padding
  static const EdgeInsets sectionFull = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceMd,
    vertical: AppDimensions.spaceLg,
  );

  /// Button padding (internal)
  static const EdgeInsets button = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceLg,
    vertical: AppDimensions.spaceSm,
  );

  /// Chip padding (small internal)
  static const EdgeInsets chip = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceSm,
    vertical: AppDimensions.spaceXs,
  );

  /// AppBar action padding
  static const EdgeInsets appBarAction = EdgeInsets.symmetric(
    horizontal: AppDimensions.spaceSm,
  );

  /// Bottom sheet padding
  static const EdgeInsets bottomSheet = EdgeInsets.fromLTRB(
    AppDimensions.spaceLg,
    AppDimensions.spaceLg,
    AppDimensions.spaceLg,
    AppDimensions.spaceLg,
  );

  /// Safe area bottom padding (for bottom sheets above keyboard)
  static const EdgeInsets bottomSheetWithKeyboard = EdgeInsets.fromLTRB(
    AppDimensions.spaceLg,
    AppDimensions.spaceLg,
    AppDimensions.spaceLg,
    AppDimensions.spaceXl,
  );

  /// Zero padding (for explicit no padding)
  static const EdgeInsets zero = EdgeInsets.zero;
}
