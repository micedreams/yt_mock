import 'package:flutter/material.dart';

Color primaryColor = const Color(0xff181818);
Color secondaryColor = const Color(0xFF212121);
Color accentColor = const Color(0xFF373737);
Color darkColor = const Color(0xff121212);

const double myPadding = 5.5;
const iconSize = 27.00;

class HeightSpacer extends StatelessWidget {
  final double myHeight;

  const HeightSpacer({Key? key, required this.myHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: myHeight,
    );
  }
}

class WidthSpacer extends StatelessWidget {
  final double myWidth;

  const WidthSpacer({Key? key, required this.myWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: myWidth,
    );
  }
}

class BuildDivider extends StatelessWidget {
  final double myThickness;
  final Color myColor;

  const BuildDivider(
      {Key? key, required this.myThickness, required this.myColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: myThickness,
      color: myColor,
    );
  }
}
