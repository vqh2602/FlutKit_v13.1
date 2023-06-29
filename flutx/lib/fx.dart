// Copyright 2023 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library flutx;

import 'package:flutter/material.dart';
import 'package:flutx/responsive/responsive.dart';
import 'package:flutx/styles/styles.dart';

class Fx {
  // entry point of the package
  init() {}

  static void changeTheme(ThemeData theme) {
    FxAppTheme.theme = theme;
  }

  static void setTextDirection(TextDirection direction) {
    FxAppTheme.textDirection = direction;
  }

  static void changeFontFamily(GoogleFontFunction fontFamily) {
    FxTextStyle.changeFontFamily(fontFamily);
  }

  static void changeDefaultFontWeight(Map<int, FontWeight> defaultFontWeight) {
    FxTextStyle.changeDefaultFontWeight(defaultFontWeight);
  }

  static void changeDefaultTextFontWeight(Map<FxTextType, int> defaultFontWeight) {
    FxTextStyle.changeDefaultTextFontWeight(defaultFontWeight);
  }

  static void changeDefaultTextSize(Map<FxTextType, double> defaultTextSize) {
    FxTextStyle.changeDefaultTextSize(defaultTextSize);
  }

  static void changeDefaultLetterSpacing(Map<FxTextType, double> defaultLetterSpacing) {
    FxTextStyle.changeDefaultLetterSpacing(defaultLetterSpacing);
  }

  static setConstant(FxConstantData constantData) {
    FxConstant.setConstant(constantData);
  }

  static setFlexSpacing(double spacing) {
    FxScreenMedia.flexSpacing = spacing;
  }
  static setFlexColumns(int columns){
    FxScreenMedia.flexColumns = columns;
  }
}
