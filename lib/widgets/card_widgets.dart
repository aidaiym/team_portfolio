import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({this.navigations, this.icons, this.cardTitle, key})
      : super(key: key);

  final String cardTitle;
  final Widget icons;
  final Function navigations;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: navigations),
        );
      },
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Container(
            width: 200,
            decoration:const BoxDecoration(
              color: Color(0xff181A20),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff242833),
                  blurRadius: 12,
                  offset: Offset(1, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 25.0),
                icons,
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    cardTitle,
                    style:const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
