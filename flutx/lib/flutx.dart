// Copyright 2023 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library flutx;

import 'package:flutter/material.dart';

import 'styles/styles.dart';

export 'extensions/extensions.dart';
export 'mixins/mixins.dart';
export 'state_management/state_management.dart';

export 'utils/utils.dart';
export 'widgets/widgets.dart';
export 'fx.dart';

export 'styles/styles.dart';
export 'package:flutx/responsive/responsive.dart';

//Routes
export 'router/router.dart';
export 'validation/validations.dart';

@Deprecated('Use Fx instead of FlutX')
class FlutX {
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

  static void changeDefaultTextFontWeight(
      Map<FxTextType, int> defaultFontWeight) {
    FxTextStyle.changeDefaultTextFontWeight(defaultFontWeight);
  }

  static void changeDefaultTextSize(Map<FxTextType, double> defaultTextSize) {
    FxTextStyle.changeDefaultTextSize(defaultTextSize);
  }

  static void changeDefaultLetterSpacing(
      Map<FxTextType, double> defaultLetterSpacing) {
    FxTextStyle.changeDefaultLetterSpacing(defaultLetterSpacing);
  }
}
