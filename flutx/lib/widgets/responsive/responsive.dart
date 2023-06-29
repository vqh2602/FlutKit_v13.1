import 'package:flutter/material.dart';
import 'package:flutx/responsive/responsive.dart';

class FxResponsive extends StatelessWidget {
  final Widget Function(BuildContext, BoxConstraints, FxScreenMediaType)
      builder;

  const FxResponsive({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) => builder(
            context,
            constraints,
            FxScreenMedia.getTypeFromWidth(MediaQuery.of(context).size.width)));
  }
}
