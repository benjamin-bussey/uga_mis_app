import 'package:flutter/material.dart';


class Course extends StatelessWidget {
  final String name, abbreviation, information;

  Course(this.name, this.abbreviation, this.information);

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
      child: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      '$name ($abbreviation)',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Padding(padding: EdgeInsets.only(top: 3.0)),
                  Text(
                    information,
                    style: TextStyle(fontSize: 14.5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
