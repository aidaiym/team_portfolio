import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Links extends StatelessWidget {
  String links;
  IconData linkIkon;
  Links({
    this.linkIkon,
    this.links,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Expanded(
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Center(
                child: FaIcon(linkIkon, color: Color(0xff0075fc), size: 25),
              ),
            ),
          ),
          onTap: () async {
            final url = links;
            if (await canLaunch(url)) {
              await launch(url);
            }
          },
        ),
      ),
    );
  }
}
