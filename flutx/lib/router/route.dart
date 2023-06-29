// Copyright 2023 The FlutX Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'middlewares/middleware.dart';

class FxRoute {
  String name;
  WidgetBuilder builder;
  List<FxMiddleware>? middlewares;

  FxRoute({required this.name, required this.builder, this.middlewares});
}
