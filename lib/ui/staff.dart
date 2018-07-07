import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Staff extends StatefulWidget {
  List facultyData;

  Staff(facultyData) {
    this.facultyData = facultyData;
  }

  @override
  _StaffState createState() => _StaffState(facultyData);
}

class _StaffState extends State<Staff> {
  List _data;

  _StaffState(List facultyData) {
    _data = facultyData;
  }

  @override
  Widget build(BuildContext context) {
    double viewWidth = MediaQuery.of(context).size.width;
    double viewHeight = MediaQuery.of(context).size.height;

    return ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xFFD6D2C4),
              borderRadius: BorderRadius.circular(5.0),
              shape: BoxShape.rectangle,
            ),
            margin: EdgeInsets.fromLTRB(viewWidth * .05, viewHeight * .015,
                viewWidth * .05, viewHeight * .015),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        //TODO Implement popup
                        onTap: () => _openBio(_data[index]['bio']),
                        child: Text(
                          _data[index]['name'],
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Text(
                        _data[index]['title'],
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Office: ${_data[index]['office']}',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      //TODO implement popup
                      GestureDetector(
                        onTap: () => _email(_data[index]['email']),
                        child: Text(
                          _data[index]['email'],
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.lightBlue,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                )),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF554F47),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    margin: const EdgeInsets.only(right: 7.5),
                    child: GestureDetector(
                      onTap: () => _openBio(_data[index]['bio']),
                      child: Image.network(
                        'http://${_data[index]['picture']}',
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  _email(String email) async {
    var url = 'mailto:$email';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _openBio(String bioLink) async {
    var url = bioLink;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
