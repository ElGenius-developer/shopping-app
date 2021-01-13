import 'package:flutter/material.dart';
import 'package:shopping_app_firsttry/data/constans.dart';

class ColorDot extends StatelessWidget {
  final color;
  final isSelected;

  const ColorDot({this.color, this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 24,
        height: 24,
        margin: EdgeInsets.only(
          top: defaultPadding / 4,
          right: defaultPadding / 4,
        ),
        padding: EdgeInsets.all(2.5),

        decoration: BoxDecoration(

          shape: BoxShape.circle,
          border: Border.all(
            color: (isSelected) ? color : Colors.transparent,
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ));
  }
}
