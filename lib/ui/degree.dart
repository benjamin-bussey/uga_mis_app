import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Degree extends StatelessWidget {
  final String name, level, information, link;

  Degree(this.name, this.level, this.information, this.link);

  @override
  Widget build(BuildContext context) {
    double viewWidth = MediaQuery.of(context).size.width;

    return Container(
        decoration: BoxDecoration(
          color: Color(0xFFD6D2C4),
          borderRadius: BorderRadius.circular(5.0),
          shape: BoxShape.rectangle,
        ),
        margin: EdgeInsets.fromLTRB(
            viewWidth * .05,
            MediaQuery.of(context).size.height * .015,
            viewWidth * .05,
            MediaQuery.of(context).size.height * .015),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  level,
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Text(information, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                alignment: Alignment.centerLeft,
                child: MaterialButton(
                  onPressed: () => _apply(),
                  color: Color(0xFFBA0C2F),
                  child: Text(
                    'Learn More',
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  _apply() async {
    var url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
