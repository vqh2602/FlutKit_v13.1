import 'package:flutter/material.dart';

class FxStarRating extends StatelessWidget {
  final double rating, size, spacing;
  final Color activeColor, inactiveColor;
  final bool inactiveStarFilled, showInactive;
  final IconData? activeIcon, halfIcon, inactiveIcon;

  FxStarRating(
      {this.rating = 5,
      this.size = 16,
      this.spacing = 0,
      this.activeColor = Colors.yellow,
      this.inactiveColor = Colors.black,
      this.inactiveStarFilled = false,
      this.showInactive = true,
      this.activeIcon,
      this.halfIcon,
      this.inactiveIcon});

  @override
  Widget build(BuildContext context) {
    int ratingCount = rating.floor();

    bool isHalf = (ratingCount != rating);
    List<Widget> _stars = [];
    for (int i = 0; i < 5; i++) {
      if (i < ratingCount) {
        _stars.add(Icon(
          activeIcon ?? Icons.star,
          color: activeColor,
          size: size,
        ));

        _stars.add(SizedBox(width: spacing));
      } else {
        if (isHalf) {
          isHalf = false;
          _stars.add(Icon(
            halfIcon ?? Icons.star_half_outlined,
            color: activeColor,
            size: size,
          ));
        } else if (showInactive) {
          _stars.add(Icon(
            inactiveStarFilled
                ? (activeIcon ?? Icons.star)
                : (inactiveIcon ?? Icons.star_outline),
            color: inactiveColor,
            size: size,
          ));
        }
        _stars.add(SizedBox(width: spacing));
      }
    }
    return Row(mainAxisSize: MainAxisSize.min, children: _stars);
  }
}
