import 'package:flutter/material.dart';

class FloatingButtons extends StatefulWidget {
  final String floatText;
  final String floatText2;
  final Function incrementCount;
  final Function decrementCount;
  const FloatingButtons(
      {Key key,
      this.floatText2,
      this.floatText,
      this.incrementCount,
      this.decrementCount})
      : super(key: key);

  @override
  _FloatingButtonsState createState() => _FloatingButtonsState();
}

class _FloatingButtonsState extends State<FloatingButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff1D1E33),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.floatText,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            Text(
              widget.floatText2,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new FloatingActionButton(
                  heroTag: null,
                  onPressed: widget.incrementCount,
                  backgroundColor: Color(0xff4C4E5D),
                  child: Text(
                    '+',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                new FloatingActionButton(
                  heroTag: null,
                  onPressed: widget.decrementCount,
                  backgroundColor: Color(0xff4C4E5D),
                  child: Text(
                    '-',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
