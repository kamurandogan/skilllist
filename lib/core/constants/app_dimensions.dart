/// Application dimension constants
/// Contains all spacing, sizing, radius, and layout values
class AppDimensions {
  AppDimensions._();

  // ==================== SPACING/PADDING/MARGIN ====================

  /// Extra small spacing (4px)
  static const double spaceXs = 4;

  /// Small spacing (8px)
  static const double spaceSm = 8;

  /// Medium spacing (16px) - Most common
  static const double spaceMd = 16;

  /// Large spacing (24px)
  static const double spaceLg = 24;

  /// Extra large spacing (32px)
  static const double spaceXl = 32;

  /// Extra extra large spacing (48px)
  static const double spaceXxl = 48;

  // ==================== BORDER RADIUS ====================

  /// Extra small radius (4px)
  static const double radiusXs = 4;

  /// Small radius (8px)
  static const double radiusSm = 8;

  /// Medium radius (12px) - Modern style
  static const double radiusMd = 12;

  /// Large radius (16px) - Modern style
  static const double radiusLg = 16;

  /// Extra large radius (24px)
  static const double radiusXl = 24;

  /// Fully rounded (100px)
  static const double radiusRounded = 100;

  // ==================== ICON SIZES ====================

  /// Small icon (16px)
  static const double iconSmall = 16;

  /// Medium icon (24px) - Default
  static const double iconMedium = 24;

  /// Large icon (32px)
  static const double iconLarge = 32;

  /// Extra large icon (48px)
  static const double iconXLarge = 48;

  // ==================== BUTTON HEIGHTS ====================

  /// Small button height (32px)
  static const double buttonHeightSmall = 32;

  /// Medium button height (40px) - Default
  static const double buttonHeightMedium = 40;

  /// Large button height (48px)
  static const double buttonHeightLarge = 48;

  /// Extra large button height (56px)
  static const double buttonHeightXLarge = 56;

  // ==================== AVATAR SIZES ====================

  /// Small avatar (32px)
  static const double avatarSmall = 32;

  /// Medium avatar (48px)
  static const double avatarMedium = 48;

  /// Large avatar (64px)
  static const double avatarLarge = 64;

  /// Extra large avatar (96px)
  static const double avatarXLarge = 96;

  /// Extra extra large avatar (128px)
  static const double avatarXxLarge = 128;

  // ==================== ELEVATION LEVELS ====================

  /// No elevation
  static const double elevation0 = 0;

  /// Very subtle elevation
  static const double elevation1 = 1;

  /// Subtle elevation (cards)
  static const double elevation2 = 2;

  /// Medium elevation (raised buttons)
  static const double elevation3 = 3;

  /// High elevation (FAB)
  static const double elevation4 = 4;

  /// Very high elevation (dialogs)
  static const double elevation6 = 6;

  /// Maximum elevation (modal sheets)
  static const double elevation8 = 8;

  // ==================== COMPONENT SPECIFIC ====================

  /// AppBar height
  static const double appBarHeight = 56;

  /// Bottom navigation bar height
  static const double bottomNavHeight = 56;

  /// Tab bar height
  static const double tabBarHeight = 48;

  /// List tile height (minimum)
  static const double listTileHeight = 56;

  /// Dialog max width
  static const double dialogMaxWidth = 400;

  /// Bottom sheet max height percentage (80% of screen)
  static const double bottomSheetMaxHeightPercent = 0.8;

  /// Input field height
  static const double inputFieldHeight = 48;

  /// Divider thickness
  static const double dividerThickness = 1;

  /// Border width (default)
  static const double borderWidth = 1;

  /// Thick border width (focused/active)
  static const double borderWidthThick = 2;

  // ==================== BREAKPOINTS (Responsive) ====================

  /// Mobile breakpoint (max width)
  static const double breakpointMobile = 600;

  /// Tablet breakpoint (max width)
  static const double breakpointTablet = 1024;

  /// Desktop breakpoint (min width)
  static const double breakpointDesktop = 1025;

  // ==================== IMAGE SIZES ====================

  /// Thumbnail image size (64px)
  static const double imageThumbnail = 64;

  /// Small image size (128px)
  static const double imageSmall = 128;

  /// Medium image size (256px)
  static const double imageMedium = 256;

  /// Large image size (512px)
  static const double imageLarge = 512;

  // ==================== OPACITY LEVELS ====================

  /// Disabled opacity
  static const double opacityDisabled = 0.38;

  /// Medium opacity (secondary text, icons)
  static const double opacityMedium = 0.6;

  /// High opacity (active elements)
  static const double opacityHigh = 0.87;

  /// Overlay opacity (dialogs, bottom sheets)
  static const double opacityOverlay = 0.5;
}
