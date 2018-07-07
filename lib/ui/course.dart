import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Course extends StatefulWidget {
  List courseData;

  Course(courseData) {
    this.courseData = courseData;
  }

  @override
  _CourseState createState() => _CourseState(courseData);
}

class _CourseState extends State<Course> {
  List _data;

  _CourseState(List courseData) {
    _data = List();
    _data.add(courseData[0]);
    _data.add(courseData[1]);
  }

  @override
  Widget build(BuildContext context) {
    double viewWidth = MediaQuery.of(context).size.width;
    double viewHeight = MediaQuery.of(context).size.height;

    return ListView.builder(
        itemCount: _data[0].length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xFFD6D2C4),
              borderRadius: BorderRadius.circular(5.0),
              shape: BoxShape.rectangle,
            ),
            margin: EdgeInsets.fromLTRB(viewWidth * .05, viewHeight * .015,
                viewWidth * .05, viewHeight * .015),
            child: Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Text(
                            '${_data[0][index]['name']} (${_data[0][index]['abbrev']})',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.only(top: 3.0)),
                        Text(
                          //Removing newlines in text
                          _data[0][index]['information']
                              .toString()
                              .replaceAll('\n', ''),
                          style: TextStyle(fontSize: 14.5),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          alignment: Alignment.bottomRight,
                          child: Text(
                            _data[0][index]['level'],
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  _openLink(String link) async {
    // TODO Implement this method
    var url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
