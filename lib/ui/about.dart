import 'package:flutter/material.dart';
import '../ui/degree.dart';
import '../ui/organization.dart';

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

  Organization smis = Organization(
      'Society for Management Information Systems',
      'The Society for Management Information Systems is a student organization devoted to cultivating relationships among students, faculty, and industry representatives in the field of computing and information systems.  SMIS hosts company presentations, resume and interview workshops, banquets, and much more.',
      'https://www.ugasmis.com/');
  Organization wit = Organization(
      'Women in Technology',
      'The purpose of Women In Tech is to provide opportunities for UGA students. Our focus is on the success of women in the technology industry. WIT seeks to foster strong personal and professional development among our members, and to strengthen leadership qualities and technical skills to encourage career success. We seek to improve the educational, social, and cultural standards surrounding the underrepresentation of women in the field of technology.',
      'http://womenintechuga.wixsite.com/womenintechuga');

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(10.0)),
        Center(
          child: const Text(
            "About MIS",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30.2,
              fontWeight: FontWeight.w400),
          ),
        ),
        const Divider(color: Colors.black,),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                './images/award_2018.png',
                height: 150.0,
              ),
              const Text(
                'Management Information Systems (MIS) is a hands-on major which equips students with real-world skills that are in demand in the job market. Our program prepares students to lead IT-enabled change in organizations.',
                style: TextStyle(fontSize: 15.5),
              ),
              const Padding(padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0)),
              const Text(
                'The Terry MIS program provides the foundation for students to go in a technical direction (such as a programmer or database administrator), a non-technical direction (such as a business process analyst or project manager), or somewhere in the middle (such as a business intelligence or IT risk & security specialist).',
                style: TextStyle(fontSize: 15.5),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0)),
              const Center(
                child: Text(
                  'Degree Programs',
                  style: TextStyle(fontSize: 30.2),
                ),
              ),
              const Divider(color: Colors.black,),
              Column(
                children: <Widget>[
                  undergrad,
                  mba,
                  mbt,
                  phd,
                ],
              ),
              const Padding(
                padding:
                EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0)),
              const Center(
                child: Text(
                  'Student Organizations',
                  style: TextStyle(fontSize: 30.2),
                ),
              ),
              const Divider(color: Colors.black,),
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
