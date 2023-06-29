import 'package:flutter/material.dart';
import 'package:flutx/responsive/responsive.dart';
import 'package:flutx/utils/spacing.dart';

import 'flex_item.dart';
import 'responsive.dart';
import 'package:collection/collection.dart';


class FxFlex extends StatelessWidget {
  final List<FxFlexItem> children;
  final WrapAlignment wrapAlignment;
  final WrapCrossAlignment wrapCrossAlignment;
  final WrapAlignment runAlignment;
  final bool contentPadding;

  // final Map<ScreenMediaType, int>? flex;
  final double? spacing, runSpacing;

  const FxFlex(
      {super.key,
      required this.children,
      this.wrapAlignment = WrapAlignment.start, // this.flex,
      this.wrapCrossAlignment = WrapCrossAlignment.start,
      this.runAlignment = WrapAlignment.start,
      this.contentPadding = true,
      this.spacing,
      this.runSpacing});

  getPadding(index, length) {
    if (contentPadding) {
      return FxSpacing.x((spacing ?? flexSpacing) / 2);
    } else {
      return FxSpacing.fromLTRB(index == 0 ? 0 : (spacing ?? flexSpacing) / 2, 0,
          index == length - 1 ? 0 : (spacing ?? flexSpacing) / 2, 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FxResponsive(
      builder: (BuildContext context, BoxConstraints constraints, screenMediaType) {
        double width = constraints.maxWidth;
        List<Widget> list = [];
        for (List<FxFlexItem> lCol in getGrouped(screenMediaType)) {
          list.addAll(lCol.mapIndexed((index, col) => Container(
                width: getWidthFromFlex(width, col.flex[screenMediaType] ?? FxScreenMedia.flexColumns,
                    lCol.length, spacing ?? flexSpacing),
                child: col,
                padding: getPadding(index, lCol.length),
              )));
          // for (FxFlexItem col in) {
          //   const padding = contenetPadding ? FxSpacing.x((spacing ?? flexSpacing) / 2) : FxSpacing.x(
          //       (spacing ?? flexSpacing) / 2);
          //   list.add(Container(width: getWidthFromFlex(
          //       width, col.flex[screenMediaType] ?? FxScreenMedia.flexColumns, lCol.length,
          //       spacing ?? flexSpacing), child: col,));
          //
          //   // list.add(FxSpacing.width(1));
          // }
        }
        return Wrap(
          crossAxisAlignment: wrapCrossAlignment,
          alignment: wrapAlignment,
          runAlignment: runAlignment,
          runSpacing: (runSpacing ?? flexSpacing),
          spacing: (spacing ?? 0),
          children: list,
        );
      },
    );
  }

  List<List<FxFlexItem>> getGrouped(FxScreenMediaType type) {
    List<List<FxFlexItem>> list = [];
    var flexCount = 0;
    List<FxFlexItem> iList = [];
    for (FxFlexItem col in children) {
      if (col.display[type]!.isBlock) {
        int flex = col.flex[type]!;
        if (flexCount + flex <= 12) {
          iList.add(col);
          flexCount += flex;
        } else {
          list.add(iList);
          iList = [];
          iList.add(col);
          flexCount = 0;
        }
      }
    }
    if (iList.isNotEmpty) {
      list.add(iList);
    }
    return list;
  }

  double getWidthFromFlex(double width, int flex, int items, double spacing) {
    return (width * flex / FxScreenMedia.flexColumns).floorToDouble();
  }
}
