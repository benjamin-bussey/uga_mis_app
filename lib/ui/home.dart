import 'package:flutter/material.dart';
import '../ui/staff.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

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
              GestureDetector(
                onTap: () => _apply(),
                child: Text('Apply Now!', style: TextStyle(color: Colors.lightBlue, decoration: TextDecoration.underline),),
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

  _apply() async{
    const url = 'http://www.terry.uga.edu/undergraduate/admissions';
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could not launch $url';
    }
  }
}

class Faculty extends StatefulWidget {
  @override
  _FacultyState createState() => _FacultyState();
}

class _FacultyState extends State<Faculty> {
  Staff aronson = Staff('Janine Elyse Aronson', 'Professor',
      'jaronson@uga.edu', 'C418 Benson Hall');
  Staff berente = Staff('Nicholas Berente', 'Associate Professor',
      'berente@uga.edu', 'C417 Benson Hall');
  Staff bostrum = Staff('Robert Bostrom', 'Professor Emeritus',
      'bostom@uga.edu', 'C425 Benson Hall');
  Staff chester = Staff('Timothy Chester', 'Adjunct Instructor',
      'tchester@uga.edu', 'C427 Benson Hall');
  Staff marie = Staff(
      'Marie-Claude Boudreau',
      'Department Head & Associate Professor',
      'mcboudre@uga.edu',
      'C404B Benson Hall');
  Staff debabroto = Staff('Debabroto Chatterjee', 'Associate Professor',
      'dchatte@uga.edu', 'C423 Benson Hall');
  Staff dale = Staff('Dale Goodhue', 'Professor Emeritus',
      'dgoodhue@uga.edu', 'C424 Benson Hall');
  Staff ilir = Staff(
      'Ilir Hasko', 'Adjunct Instructor', 'ihasko@uga.edu', 'C428 Benson Hall');
  Staff daniel = Staff(
      'Daniel Everett',
      'Part-Time Assistant Professor',
      'drdan@uga.edu',
      '425 Boyd Grad Rsch Ctr');
  Staff mark = Staff(
      'Mark Huber', 'Senior Lecturer', 'mhuber@uga.edu', 'C414 Benson Hall');
  Staff elena = Staff(
      'Elena Karahanna',
      'L. Edmund Rast Professor of Business & UGA Distinguished Research Professor',
      'ekarah@uga.edu',
      'C413 Benson Hall');
  Staff jeffrey = Staff('Jeffrey Howells', 'Temporary Lecturer',
      'jhowells@uga.edu', 'C428 Benson Hall');
  Staff weifeng = Staff('Weifeng Li', 'Assistant Professor',
      'weifeng.li@uga.edu', 'C422 Benson Hall');
  Staff astrid = Staff('Astrid Lipp', 'Part-Time Instructor',
      'alipp@uga.edu', 'C427 Benson Hall');
  Staff victor = Staff('Victor Lawson', 'Part-Time Lecturer',
      'vlawson3@uga.edu', 'C404 Benson Hall');
  Staff craig = Staff(
      'Craig Allan Piercy',
      'Director, Master of Business Technology Program and Sr. Lecturer',
      'cpiercy@uga.edu',
      'C412 Benson Hall');
  Staff hani = Staff('Hani Safadi', 'Assistant Professor',
      'hanisaf@uga.edu', 'C420 Benson Hall');
  Staff patrick =
      Staff('Patrick McKeown', 'Professor Emeritus', '', '');
  Staff amrit =
      Staff('Amrit Tiwana', '', 'tiwana@uga.edu', 'C421 Benson Hall');
  Staff nikhil = Staff(
      'Nikhil Srinivasan', 'Lecturer', 'nsrini@uga.edu', 'C416 Benson Hall');
  Staff aaron = Staff('Aaron Schecter', 'Assistant Professor',
      'aschecter@uga.edu', 'C419 Benson Hall');
  Staff richard = Staff(
      'Richard Thomas Watson',
      'J. Rex Fuqua Distinguished Chair for Internet Strategy',
      'rwatson@uga.edu',
      'C415 Benson Hall');
  Staff hugh = Staff('Hugh James Watson', 'Part-Time Instructor',
      'hwatson@uga.edu', 'C429 Benson Hall');
  Staff becky = Staff('Becky Curry', 'Administrative Associate II', 'bcurry@uga.edu', 'C404b Benson Hall');
  Staff emily = Staff('Emily Kianka', 'Academic Advisor I', 'ekianka@uga.edu', 'C224 Benson Hall');

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        aronson,
        berente,
        bostrum,
        chester,
        marie,
        debabroto,
        dale,
        ilir,
        daniel,
        mark,
        elena,
        jeffrey,
        weifeng,
        astrid,
        victor,
        craig,
        hani,
        patrick,
        amrit,
        nikhil,
        aaron,
        richard,
        hugh,
        becky,
        emily,
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
