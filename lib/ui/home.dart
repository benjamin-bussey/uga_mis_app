import 'package:flutter/material.dart';
import '../ui/staff.dart';
import '../ui/course.dart';
import '../ui/degree.dart';
import '../ui/organization.dart';

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
  Degree undergrad = Degree(
      'BBA - Management Information Systems',
      'Undergraduate Degree',
      'Management Information Systems (MIS) is a hands-on major that equips students with real-world skills that are highly sought-after in the job market. To prepare students for leading IT-enabled change in organizations, MIS faculty utilize a variety of instructional methods.',
      'http://www.terry.uga.edu/undergraduate/majors/management-information-systems');
  Degree mba = Degree(
      'Full-Time MBA (Business Analytics)',
      'Graduate Degree',
      'Today\'s organizations have seen a quantum leap in the amount of relevant data available for decision making. Businesses are quickly turning to "business analytics" and "Big Data" to harness this ocean of data and the new technologies needed to make sense of it. The demand for employees with the skills and understanding in this realm is growing fast, and not likely to subside. UGA MBAs with concentrations in Business Analytics have accepted positions applying analytics to Operations at companies like Amazon, Coca-Cola, Delta Air Lines, and Georgia-Pacific.',
      'http://www.terry.uga.edu/mba/fulltime/concentrations/business-analytics');
  Degree mbt = Degree(
      'MBT - Master of Business and Technology',
      'Graduate',
      'The Online Master of Business and Technology (MBT) program is uniquely designed to reinforce your IT skill-set and complement it with project management experience and leadership clout. Operating at the intersection of business management and IT, our graduates are prepared to lead teams that build technology-based solutions. Delivered in a hybrid, distance-learning format by the University of Georgia Online, the MBT program is designed for working professionals who want to learn from award-winning researchers and industry practitioners.',
      'http://www.terry.uga.edu/mbt');
  Degree phd = Degree(
      'PHD - Management Information System',
      'Graduate Degree',
      'The PhD in MIS is a 4 to 5 year, full-time program that seeks to develop outstanding scholars who will excel in research and teaching positions at other major universities. The MIS PhD program provides significant individual flexibility, while at the same time ensuring that students acquire the necessary conceptual and methodological skills to begin work toward a leadership position in the field.',
      'http://www.terry.uga.edu/phd/concentrations/management-information-systems/');
  
  Organization smis = Organization('Society for Management Information Systems', 'The Society for Management Information Systems is a student organization devoted to cultivating relationships among students, faculty, and industry representatives in the field of computing and information systems.  SMIS hosts company presentations, resume and interview workshops, banquets, and much more.', 'https://www.ugasmis.com/');
  Organization wit = Organization('Women in Technology', 'The purpose of Women In Tech is to provide opportunities for UGA students. Our focus is on the success of women in the technology industry. WIT seeks to foster strong personal and professional development among our members, and to strengthen leadership qualities and technical skills to encourage career success. We seek to improve the educational, social, and cultural standards surrounding the underrepresentation of women in the field of technology.', 'http://womenintechuga.wixsite.com/womenintechuga');

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
        Divider(
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                './images/award_2018.png',
                height: 150.0,
              ),
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
                      EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0)),
              Center(
                child: Text(
                  'Degree Programs',
                  style: TextStyle(fontSize: 30.2),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  undergrad,
                  mba,
                  mbt,
                  phd,
                ],
              ),
              Padding(
                  padding:
                  EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0)),
              Center(
                child: Text(
                  'Student Organizations',
                  style: TextStyle(fontSize: 30.2),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  smis,
                  wit,
                ],
              )
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
  Staff aronson = Staff('Janine Elyse Aronson', 'Professor', 'jaronson@uga.edu',
      'C418 Benson Hall');
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
  Staff dale = Staff('Dale Goodhue', 'Professor Emeritus', 'dgoodhue@uga.edu',
      'C424 Benson Hall');
  Staff ilir = Staff(
      'Ilir Hasko', 'Adjunct Instructor', 'ihasko@uga.edu', 'C428 Benson Hall');
  Staff daniel = Staff('Daniel Everett', 'Part-Time Assistant Professor',
      'drdan@uga.edu', '425 Boyd Grad Rsch Ctr');
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
  Staff astrid = Staff('Astrid Lipp', 'Part-Time Instructor', 'alipp@uga.edu',
      'C427 Benson Hall');
  Staff victor = Staff('Victor Lawson', 'Part-Time Lecturer',
      'vlawson3@uga.edu', 'C404 Benson Hall');
  Staff craig = Staff(
      'Craig Allan Piercy',
      'Director, Master of Business Technology Program and Sr. Lecturer',
      'cpiercy@uga.edu',
      'C412 Benson Hall');
  Staff hani = Staff('Hani Safadi', 'Assistant Professor', 'hanisaf@uga.edu',
      'C420 Benson Hall');
  Staff patrick = Staff('Patrick McKeown', 'Professor Emeritus', '', '');
  Staff amrit = Staff('Amrit Tiwana', '', 'tiwana@uga.edu', 'C421 Benson Hall');
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
  Staff becky = Staff('Becky Curry', 'Administrative Associate II',
      'bcurry@uga.edu', 'C404b Benson Hall');
  Staff emily = Staff('Emily Kianka', 'Academic Advisor I', 'ekianka@uga.edu',
      'C224 Benson Hall');

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 5.0)),
        Center(
          child: Text(
            'Faculty',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        Divider(
          color: Colors.black,
        ),
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
        Padding(padding: EdgeInsets.only(top: 5.0)),
        Center(
          child: Text(
            'Staff',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        Divider(
          color: Colors.black,
        ),
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
  Course intro = Course(
      'Introduction to Information Systems in Business',
      'MIST 2090',
      'Concepts related to leading information technology-enabled change in business, including fundamentals of information systems, business process improvement, business and data modeling, project management, and intensive spreadsheet utilization.');
  Course introHonors = Course(
      'Intoduction to Information Systems in Business (Honors)',
      'MIST 2190H',
      'Computer concepts and information technology in business, including hardware and software concepts, fundamentals of information systems, telecommunications, and business-related software packages.');
  Course introWebTech = Course(
      'Introduction to Leading Edge Web Technology',
      'MIST 4501',
      'Using latest methods and tools, students will combine existing Web services in unique ways. A key premise is that Web technology has advanced such that surprisingly useful applications can be developed with no more technical background than that of an average Facebook or email user. Examines the wider societal implications.');
  Course energyInfo = Course('Energy Informations', 'MIST 4550',
      'Energy Informatics involves analyzing, designing, and implementing systems to increase the efficiency of energy demand and supply systems. This requires the collection and analysis of data used to optimize energy distribution and consumption networks. Students will leverage the necessary information systems competencies and multi-disciplinary knowledge to increase societal energy efficiency.');
  Course programBus = Course('Computer Programming in Business', 'MIST 4600',
      'Introduction to computer programming using an object-oriented language; top-down design; structured programming; and debugging, testing and implementation');
  Course dataMgmt = Course('Data Management', 'MIST 4610',
      'Data management, including database development, access, and administration. The focus is on issues and principles of managing organizational data. Students will get extensive experience in developing data models, creating relational databases, and formulating and executing complex queries.');
  Course sysAD = Course('Systems Analysis and Design', 'MIST 4620S',
      'Emphasis on development of business application systems using object-oriented and structured analysis tools and techniques for describing processes, use cases, data structures, system objects, file designs, input and output designs, and program specifications. Includes a service-learning project with requirements gathering, planning, and development of a prototype for an internal/external client.');
  Course netApps = Course('Network-Based Application Development', 'MIST 4630',
      'Network-based application development using a current development language and platform. Concepts include application development strategies and techniques, web technology platforms, a web development language, connection to a database, and web services. Projects will involve development of a network-based application for an organization.');
  Course intern = Course(
      'Management Information Systems Internship',
      'MIST 4800',
      'Students are permitted to enter businesses, governmental agencies, or other organizations for the purposes of obtaining practical and applied information systems experience. A paper or suitable project associated with a description and analysis of this experience is required.');
  Course specialTopics = Course('Special Topics in MIS', 'MIST 5600',
      'The management information systems field evolves rapidly and covers many topic areas. Recent developments in areas such as office automation, data communications, and the implementation of management information systems.');
  Course businessInt = Course('Business Intelligence', 'MIST 5620',
      'Business intelligence provides the highest level of information support to aid the manager in the decision-making process. This course provides the skills necessary to conceptualize, build, and implement systems utilizing business intelligence in organizations.');
  Course networkMgmt = Course('Network Management', 'MIST 5640',
      'Basic computer networking technology concepts, standards, products, services, security, and emerging technologies. This course starts with basic networking, progressing to use of networking to deliver and manage network applications/services. While the focus of the course is around the Internet, the application of the concepts extends to other networks.');
  Course intSys = Course('Integrated Enterprise-Wide Systems', 'MIST 5650',
      'An introduction to issues of computer information systems supporting business process integration in large organizations. Problems that traditionally fragmented information systems create, the possibility of purchasable enterprise-wide integrated systems (often called Enterprise Resource Planning or ERP systems), and the benefits and difficulties of implementing such systems.');
  Course isLeadership = Course('Information Systems Leadership', 'MIST 5670',
      'The issues and management techniques involved in administering the Information System/Resource activities in an organization. The focus is on computer-based resources and IS development activities. Management of IS professionals, development and management of project teams, user-professional relationships, emerging technologies, and planning processes. A sociotechnical perspective is emphasized.');
  Course webPHP = Course('Web Application Development with PHP', 'MIST 5690',
      'Development of database driven Web applications using the PHP scripting language and a database such as MySQL or InterBase. Emphasis is on concepts and techniques required to build multi-tier applications.');
  Course advBAS = Course('Advanced Business Application Software', 'MIST 5710',
      'A variety of types of business application software that enable the student to be personally productive in the workplace by being able to gather data, analyze it, and present it to others. Students are expected to use programming and database skills to carry out these activities.');
  Course advDataMgmt = Course('Advanced Data Management', 'MIST 5730',
      'SGML, XML and associated technologies, XML implementations, XML tools, XML data management, business uses and applications of XML, data synchronization technologies, and managing data synchronization system.');
  Course projMgmt = Course('Project Management', 'MIST 5740',
      'Aspects of project management with regard to leadership and managerial processes and tools essential to successful project completion. Includes a service-learning project during which students apply skills and knowledge. Hands-on project typically results in the conceptualization, design, prototyping, and development of a software system for an external/internal client.');
  Course bpm = Course('Business Process Management', 'MIST 5750',
      'Modeling business work systems with focus on processes and the information technology (IT) to support business processes. The focus is on using IT to create, automate, and integrate business processes. Major topics covered: modeling work systems, major business processes and their relationships, modeling tools, business process/application integration approaches, creating and managing a business process using business process management software.');
  Course acctIS = Course(
      'Accounting Controls, Information Systems, Auditing, and Assurance',
      'MIST 5760',
      'Focuses on understanding how critical business processes (revenue cycle, systems development cycle, etc.) are tracked and guided by various "controls" to insure their integrity. Covers controls in a manual operation, a typical "legacy" information systems environment, and a modern integrated ERP environment. Hands-on experience with SAP.');
  Course glblIS = Course('Globalization and Information Systems', 'MIST 5780',
      'Introduction to globalization and its linkage with information technology. Topics covered include globalization strategies; cultural and structural issues impacting the development, adoption, and use of IT; offshore sourcing; the digital divide; and e-readiness.');
  Course advBPM = Course('Advanced Business Process Management', 'MIST 5790',
      'Focuses on implementing IT-Facilitated Business Processes. The primary outcome is to enable students to implement and manage a business process using business process management software. Students will apply four core models that guide the development of process-based systems: Business Process, Business Decision, Service-Oriented Architecture, and Business Data Model.');
  Course research = Course('Research in MIS', 'MIST 5900',
      'A research-intensive course requiring an original and independent research paper/project on a management information systems (MIS)-related topic under the supervision of a faculty member.');
  Course dirStudy = Course('Directed Study', 'MIST 5990',
      'Directed study in management information systems topics, giving particular attention to specialized problems in an area related to a student\'s academic interests.');

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 5.0)),
        Center(
          child: Text(
            'Undergraduate',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        Divider(
          color: Colors.black,
        ),
        intro,
        introHonors,
        introWebTech,
        energyInfo,
        programBus,
        dataMgmt,
        sysAD,
        netApps,
        intern,
        specialTopics,
        businessInt,
        networkMgmt,
        intSys,
        isLeadership,
        webPHP,
        advBAS,
        advDataMgmt,
        projMgmt,
        bpm,
        acctIS,
        glblIS,
        advBPM,
        research,
        dirStudy,
      ],
    );
  }
}
