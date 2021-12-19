import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_portfolio/screens/projects/bmicalculatorApp/constants.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key key,
    @required this.text,
    @required this.icon,
    this.allPaddingSize,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final double allPaddingSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
          allPaddingSize ?? 25.0), // ?? egerde null bolup kalsa 28.0 ber
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            size: 60.0,
          ),
          Text(
            text,
            style: titleTextStyle,
          ),
        ],
      ),
    );
  }
}
