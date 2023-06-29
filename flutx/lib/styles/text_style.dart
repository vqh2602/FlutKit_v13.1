/*
* File : App Theme
* Version : 1.0.0
* */

// Copyright 2023 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// [FxTextStyle] - gives 13 different type of styles to the text on the basis of size
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

enum FxTextType {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

// TextStyle
typedef TextStyle GoogleFontFunction({
  TextStyle? textStyle,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  double? wordSpacing,
  TextBaseline? textBaseline,
  double? height,
  Locale? locale,
  Paint? foreground,
  Paint? background,
  List<Shadow>? shadows,
  List<FontFeature>? fontFeatures,
  TextDecoration? decoration,
  Color? decorationColor,
  TextDecorationStyle? decorationStyle,
  double? decorationThickness,
});

class FxTextStyle {
  static GoogleFontFunction _fontFamily = GoogleFonts.ibmPlexSans;

  static Map<int, FontWeight> _defaultFontWeight = {};

  static Map<FxTextType, double> _defaultTextSize = {
    FxTextType.displayLarge: 57,
    FxTextType.displayMedium: 45,
    FxTextType.displaySmall: 36,
    FxTextType.headlineLarge: 32,
    FxTextType.headlineMedium: 28,
    FxTextType.headlineSmall: 26,
    FxTextType.titleLarge: 22,
    FxTextType.titleMedium: 16,
    FxTextType.titleSmall: 14,
    FxTextType.labelLarge: 14,
    FxTextType.labelMedium: 12,
    FxTextType.labelSmall: 11,
    FxTextType.bodyLarge: 16,
    FxTextType.bodyMedium: 14,
    FxTextType.bodySmall: 12,
  };

  static Map<FxTextType, int> _defaultTextFontWeight = {};

  static Map<FxTextType, double> _defaultLetterSpacing = {};

  static TextStyle getStyle(
      {TextStyle? textStyle,
      int? fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    double? finalFontSize = fontSize != null
        ? fontSize
        : (textStyle == null ? 40 : textStyle.fontSize);

    Color finalColor = color ?? FxAppTheme.theme.colorScheme.onBackground;
    finalColor = xMuted
        ? finalColor.withAlpha(160)
        : (muted ? finalColor.withAlpha(200) : finalColor);

    return _fontFamily(
        fontSize: finalFontSize,
        fontWeight: _defaultFontWeight[fontWeight],
        letterSpacing: letterSpacing,
        color: finalColor,
        decoration: decoration,
        height: height,
        wordSpacing: wordSpacing);
  }

  // Material Design 3
  static TextStyle displayLarge(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.displayLarge],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.displayLarge],
        fontWeight: _defaultTextFontWeight[FxTextType.displayLarge],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle displayMedium(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.displayMedium],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.displayMedium],
        fontWeight: _defaultTextFontWeight[FxTextType.displayMedium],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle displaySmall(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.displaySmall],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.displaySmall],
        fontWeight: _defaultTextFontWeight[FxTextType.displaySmall],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle headlineLarge(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.headlineLarge],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.headlineLarge],
        fontWeight: _defaultTextFontWeight[FxTextType.headlineLarge],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle headlineMedium(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.headlineMedium],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.headlineMedium],
        fontWeight: _defaultTextFontWeight[FxTextType.headlineMedium],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle headlineSmall(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.headlineSmall],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.headlineSmall],
        fontWeight: _defaultTextFontWeight[FxTextType.headlineSmall],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle titleLarge(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.titleLarge],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.titleLarge],
        fontWeight: _defaultTextFontWeight[FxTextType.titleLarge],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle titleMedium(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.titleMedium],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.titleMedium],
        fontWeight: _defaultTextFontWeight[FxTextType.titleMedium],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle titleSmall(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.titleSmall],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.titleSmall],
        fontWeight: _defaultTextFontWeight[FxTextType.titleSmall],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle labelLarge(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.labelLarge],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.labelLarge],
        fontWeight: _defaultTextFontWeight[FxTextType.labelLarge],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle labelMedium(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.labelMedium],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.labelMedium],
        fontWeight: _defaultTextFontWeight[FxTextType.labelMedium],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle labelSmall(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.labelSmall],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.labelSmall],
        fontWeight: _defaultTextFontWeight[FxTextType.labelSmall],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle bodyLarge(
      {TextStyle? textStyle,
      int? fontWeight,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.bodyLarge],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.bodyLarge],
        fontWeight: fontWeight ?? _defaultTextFontWeight[FxTextType.bodyLarge],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle bodyMedium(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.bodyMedium],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.bodyMedium],
        fontWeight: _defaultTextFontWeight[FxTextType.bodyMedium],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle bodySmall(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double? wordSpacing,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[FxTextType.bodySmall],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[FxTextType.bodySmall],
        fontWeight: _defaultTextFontWeight[FxTextType.bodySmall],
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static void changeFontFamily(GoogleFontFunction fontFamily) {
    FxTextStyle._fontFamily = fontFamily;
  }

  static void changeDefaultFontWeight(Map<int, FontWeight> defaultFontWeight) {
    FxTextStyle._defaultFontWeight = defaultFontWeight;
  }

  static void changeDefaultTextFontWeight(
      Map<FxTextType, int> defaultFontWeight) {
    FxTextStyle._defaultTextFontWeight = defaultFontWeight;
  }

  static void changeDefaultTextSize(Map<FxTextType, double> defaultTextSize) {
    FxTextStyle._defaultTextSize = defaultTextSize;
  }

  static void changeDefaultLetterSpacing(
      Map<FxTextType, double> defaultLetterSpacing) {
    FxTextStyle._defaultLetterSpacing = defaultLetterSpacing;
  }

  static Map<FxTextType, double> get defaultTextSize => _defaultTextSize;

  static Map<FxTextType, double> get defaultLetterSpacing =>
      _defaultLetterSpacing;

  static Map<FxTextType, int> get defaultTextFontWeight =>
      _defaultTextFontWeight;

  static Map<int, FontWeight> get defaultFontWeight => _defaultFontWeight;

  //-------------------Reset Font Styles---------------------------------
  static resetFontStyles() {
    _fontFamily = GoogleFonts.ibmPlexSans;

    _defaultFontWeight = {
      100: FontWeight.w100,
      200: FontWeight.w200,
      300: FontWeight.w300,
      400: FontWeight.w300,
      500: FontWeight.w400,
      600: FontWeight.w500,
      700: FontWeight.w600,
      800: FontWeight.w700,
      900: FontWeight.w800,
    };

    _defaultTextSize = {
      FxTextType.displayLarge: 57,
      FxTextType.displayMedium: 45,
      FxTextType.displaySmall: 36,
      FxTextType.headlineLarge: 32,
      FxTextType.headlineMedium: 28,
      FxTextType.headlineSmall: 26,
      FxTextType.titleLarge: 22,
      FxTextType.titleMedium: 16,
      FxTextType.titleSmall: 14,
      FxTextType.labelLarge: 14,
      FxTextType.labelMedium: 12,
      FxTextType.labelSmall: 11,
      FxTextType.bodyLarge: 16,
      FxTextType.bodyMedium: 14,
      FxTextType.bodySmall: 12,
    };

    _defaultTextFontWeight = {
      FxTextType.displayLarge: 500,
      FxTextType.displayMedium: 500,
      FxTextType.displaySmall: 500,
      FxTextType.headlineLarge: 500,
      FxTextType.headlineMedium: 500,
      FxTextType.headlineSmall: 500,
      FxTextType.titleLarge: 500,
      FxTextType.titleMedium: 500,
      FxTextType.titleSmall: 500,
      FxTextType.labelLarge: 600,
      FxTextType.labelMedium: 600,
      FxTextType.labelSmall: 600,
      FxTextType.bodyLarge: 500,
      FxTextType.bodyMedium: 500,
      FxTextType.bodySmall: 500,
    };

    _defaultLetterSpacing = {
      FxTextType.displayLarge: -0.25,
      FxTextType.displayMedium: 0,
      FxTextType.displaySmall: 0,
      FxTextType.headlineLarge: -0.2,
      FxTextType.headlineMedium: -0.15,
      FxTextType.headlineSmall: 0,
      FxTextType.titleLarge: 0,
      FxTextType.titleMedium: 0.1,
      FxTextType.titleSmall: 0.1,
      FxTextType.labelLarge: 0.1,
      FxTextType.labelMedium: 0.5,
      FxTextType.labelSmall: 0.5,
      FxTextType.bodyLarge: 0.5,
      FxTextType.bodyMedium: 0.25,
      FxTextType.bodySmall: 0.4,
    };
  }
}
