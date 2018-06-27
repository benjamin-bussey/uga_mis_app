import 'package:flutter/material.dart';

final _bulldog_red = Color(0xFFBA0C2F);

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MIS - Terry College of Business'),
        centerTitle: true,
        backgroundColor: _bulldog_red,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(10.0)),
            Center(
              child: Text(
                "About MIS",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.2,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Management Information Systems (MIS) is a hands-on major which equips students with real-world skills that are in demand in the job market. Our program prepares students to lead IT-enabled change in organizations.',
                    style: TextStyle(fontSize: 15.5),
                  ),
                  Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 10.0, 0.0, 0.0)),
                  Text(
                    'The Terry MIS program provides the foundation for students to go in a technical direction (such as a programmer or database administrator), a non-technical direction (such as a business process analyst or project manager), or somewhere in the middle (such as a business intelligence or IT risk & security specialist).',
                    style: TextStyle(fontSize: 15.5),
                  ),
                  Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0)),
                  Image.asset(
                    './images/mis_award.png',
                    height: 175.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int option) => debugPrint('$option Pushed'),
//TODO Figure out app navigation
//            (int option) {
//          var router = MaterialPageRoute(
//            builder: (BuildContext context) => PageSelector(option),
//          );
//          Navigator.of(context).push(router);
//        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'Faculty',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Courses'),
          ),
        ],
        fixedColor: _bulldog_red,
      ),
    );
  }
}
