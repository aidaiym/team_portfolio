import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/projects/bmicalculatorApp/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    @required this.child,
    @required this.onTap,
    this.buttonColor,
    this.constraints,
    this.shape,
    Key key,
  }) : super(key: key);

  final Color buttonColor;
  final VoidCallback onTap;
  final Widget child;
  final BoxConstraints constraints;
  final ShapeBorder shape;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      constraints: constraints ??
          BoxConstraints(
            minHeight: 50.0,
            minWidth: 50.0,
          ),
      fillColor: buttonColor ?? circleButtonColor,
      shape: shape ?? CircleBorder(),
      child: child,
    );
  }
}
