import 'package:flutter/material.dart';
import 'package:flutter_shop/models/color_palette.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final double fontSize;

  const CustomTitle({Key key, this.title, this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          title,
          style: TextStyle(
            shadows: [
              Shadow(
                blurRadius: 2.0,
                color: Colors.black45,
                offset: Offset(1.5, 3.0),
              ),
            ],
            fontSize: fontSize,
            fontFamily: Theme.of(context).textTheme.headline3.fontFamily,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = ColorPalette().carafe,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: Theme.of(context).textTheme.headline3.fontFamily,
            color: Colors.white,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Theme.of(context).textTheme.headline3.color,
            fontSize: fontSize,
            fontFamily: Theme.of(context).textTheme.headline3.fontFamily,
          ),
        ),
      ],
    );
  }
}
