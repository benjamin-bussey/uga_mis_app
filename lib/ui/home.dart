import 'package:flutter/material.dart';
import '../ui/professor.dart';

final bulldogRed = Color(0xFFBA0C2F);

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _currentTab = 0;

  Faculty faculty;
  Courses courses;
  About about;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState

    about = About();
    faculty = Faculty();
    courses = Courses();

    pages = [about, faculty, courses];
    currentPage = about;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MIS - Terry College of Business'),
        centerTitle: true,
        backgroundColor: bulldogRed,
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int index) {
          setState(() {
            _currentTab = index;
            currentPage = pages[index];
          });
        },
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
        fixedColor: bulldogRed,
      ),
    );
  }
}

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0)),
              Image.asset(
                './images/mis_award.png',
                height: 175.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Faculty extends StatefulWidget {
  @override
  _FacultyState createState() => _FacultyState();
}

class _FacultyState extends State<Faculty> {
  Professor aronson = Professor('Janine Elyse Aronson', 'Professor',
      'jaronson@uga.edu', 'C418 Benson Hall');
  Professor berente = Professor('Nicholas Berente', 'Associate Professor',
      'berente@uga.edu', 'C417 Benson Hall');
  Professor bostrum = Professor('Robert Bostrom', 'Professor Emeritus',
      'bostom@uga.edu', 'C425 Benson Hall');
  Professor chester = Professor('Timothy Chester', 'Adjunct Instructor',
      'tchester@uga.edu', 'C427 Benson Hall');

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        aronson,
        berente,
        bostrum,
        chester
      ],
    );
  }
}

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Courses'),
    );
  }
}
