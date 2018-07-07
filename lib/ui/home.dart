import 'package:flutter/material.dart';
import '../ui/staff.dart';
import '../ui/course.dart';
import '../ui/about.dart';

final bulldogRed = Color(0xFFBA0C2F);

class Home extends StatefulWidget {
  List facultyData;
  List courseData;

  Home(List facultyData, List courseData) {
    this.facultyData = facultyData;
    this.courseData = courseData;
  }

  @override
  _HomeState createState() => _HomeState(facultyData, courseData);
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  Staff staff;
  Course course;
  About about;
  List<Widget> pages;
  Widget currentPage;

  _HomeState(facultyData, courseData) {
    about = About();
    course = Course(courseData);
    staff = Staff(facultyData);

    pages = [about, staff, course];
    currentPage = about;
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

