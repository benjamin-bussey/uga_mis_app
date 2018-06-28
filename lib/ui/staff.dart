import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Staff extends StatelessWidget {
  final String name, title, email, office;

  Staff(this.name, this.title, this.email, this.office);

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
      height: MediaQuery.of(context).size.height * 0.30,
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 250.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        //TODO Implement popup
                        onTap: () => debugPrint('Works'),
                        child: Text(
                          name,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Office: $office',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      //TODO implement popup
                      GestureDetector(
                        onTap: () => _email(email),
                        child: Text(
                          email,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.lightBlue,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF554F47),
              borderRadius: BorderRadius.circular(5.0),
            ),
            margin: const EdgeInsets.only(right: 7.5),
            child: GestureDetector(
              onTap: () => debugPrint('Implement'),
              child: Image.asset(
                './images/faculty/${name.toLowerCase().replaceAll(
                        ' ', '')}.jpg',
                alignment: Alignment.center,
              ),
            ),
          ))
        ],
      ),
    );
  }

  _email(String email) async {
    var url = 'mailto:$email';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
