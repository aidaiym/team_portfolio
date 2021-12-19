import 'package:flutter/material.dart';
import 'package:team_portfolio/constants/textstyles.dart';

class MembersResume extends StatelessWidget {
  MembersResume({this.title, this.resumetext, key}) : super(key: key);
  final String title;
  final String resumetext;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: headerTextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 15,
                      width: 15,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue.shade700),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 6, top: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(width: 2, color: Colors.grey),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      resumetext,
                      style: TextStyle(fontSize: 15),
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
