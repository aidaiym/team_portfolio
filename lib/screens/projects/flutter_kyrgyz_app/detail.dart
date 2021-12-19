import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  String appbarCenterText;
  String bodyText;
  Detail(this.appbarCenterText, this.bodyText);

  @override
  _DetailState createState() => _DetailState(appbarCenterText, bodyText);
}

class _DetailState extends State<Detail> {
  String appbarCenterText;
  String bodyText;
  _DetailState(this.appbarCenterText, this.bodyText);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff20232A),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        automaticallyImplyLeading: true,
        title: Center(
          child: Text(
            appbarCenterText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          appbarCenterText,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    Text(
                      bodyText,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    child: Text(
                      'F',
                      style: TextStyle(
                        color: Color(0xffE4DCD9).withOpacity(0.1),
                        fontSize: 90,
                        fontFamily: 'neon',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
