import 'package:flutter/material.dart';

class Professor extends StatelessWidget {
  final String name, title, email, office;

  Professor(this.name, this.title, this.email, this.office);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
        color: Color(0xFFD6D2C4),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.95,
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    //TODO Shift text to the left for all non-name text widgets
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(fontSize: 25.0),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold, ),
                      ),
                      Text(
                        office,
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        email,
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Image.asset(
              './images/faculty/${name.toLowerCase().replaceAll(' ', '')}.jpg',
              alignment: Alignment.topRight,
            ),
          ],
        ),
      ),
    );
  }
}
