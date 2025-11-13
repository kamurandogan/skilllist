import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Typography system using Rubik font
/// Follows Material 3 type scale with proper text styles

class AppTextStyles {
  AppTextStyles._();

  // Base Rubik TextStyle
  static TextStyle get _baseTextStyle => GoogleFonts.rubik();

  // ==================== DISPLAY STYLES ====================
  // Large, expressive text (57px, 64px, 45px)

  /// Display Large - 57px
  /// Used for hero headlines, splash screens
  static TextStyle get displayLarge => _baseTextStyle.copyWith(
        fontSize: 57,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.25,
        height: 1.12,
      );

  /// Display Medium - 45px
  /// Used for prominent section titles
  static TextStyle get displayMedium => _baseTextStyle.copyWith(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        height: 1.16,
      );

  /// Display Small - 36px
  /// Used for large headlines
  static TextStyle get displaySmall => _baseTextStyle.copyWith(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        height: 1.22,
      );

  // ==================== HEADLINE STYLES ====================
  // Shorter, high-emphasis text (32px, 28px, 24px)

  /// Headline Large - 32px
  /// Used for page titles, major section headers
  static TextStyle get headlineLarge => _baseTextStyle.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        height: 1.25,
      );

  /// Headline Medium - 28px
  /// Used for subsection headers
  static TextStyle get headlineMedium => _baseTextStyle.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        height: 1.29,
      );

  /// Headline Small - 24px
  /// Used for smaller headers, dialog titles
  static TextStyle get headlineSmall => _baseTextStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        height: 1.33,
      );

  // ==================== TITLE STYLES ====================
  // Medium-emphasis text (22px, 16px, 14px)

  /// Title Large - 22px
  /// Used for card headers, list titles
  static TextStyle get titleLarge => _baseTextStyle.copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        height: 1.27,
      );

  /// Title Medium - 16px
  /// Used for list item titles, form labels
  static TextStyle get titleMedium => _baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        height: 1.5,
      );

  /// Title Small - 14px
  /// Used for dense list titles, small card headers
  static TextStyle get titleSmall => _baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        height: 1.43,
      );

  // ==================== BODY STYLES ====================
  // Main content text (16px, 14px, 12px)

  /// Body Large - 16px
  /// Used for primary body text, descriptions
  static TextStyle get bodyLarge => _baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        height: 1.5,
      );

  /// Body Medium - 14px
  /// Used for secondary body text (most common)
  static TextStyle get bodyMedium => _baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.43,
      );

  /// Body Small - 12px
  /// Used for captions, helper text
  static TextStyle get bodySmall => _baseTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        height: 1.33,
      );

  // ==================== LABEL STYLES ====================
  // Button, tab, and form text (14px, 12px, 11px)

  /// Label Large - 14px
  /// Used for button text, tab labels
  static TextStyle get labelLarge => _baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        height: 1.43,
      );

  /// Label Medium - 12px
  /// Used for small buttons, chip labels
  static TextStyle get labelMedium => _baseTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        height: 1.33,
      );

  /// Label Small - 11px
  /// Used for overline text, very small labels
  static TextStyle get labelSmall => _baseTextStyle.copyWith(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        height: 1.45,
      );

  // ==================== CUSTOM APP STYLES ====================

  /// Button text style (14px, medium weight)
  static TextStyle get button => labelLarge;

  /// Caption text style (12px, regular weight)
  static TextStyle get caption => bodySmall;

  /// Overline text style (11px, medium weight, uppercase)
  static TextStyle get overline => labelSmall.copyWith(
        textBaseline: TextBaseline.alphabetic,
      );

  /// Input field text style (16px)
  static TextStyle get inputText => bodyLarge;

  /// Input hint text style (16px, lighter)
  static TextStyle get inputHint => bodyLarge.copyWith(
        fontWeight: FontWeight.w300,
      );

  /// Error text style (12px, medium weight)
  static TextStyle get errorText => bodySmall.copyWith(
        fontWeight: FontWeight.w500,
      );

  // ==================== MATERIAL 3 TEXT THEME ====================

  /// Complete TextTheme for Material 3
  static TextTheme get textTheme => TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        headlineSmall: headlineSmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
      );
}
