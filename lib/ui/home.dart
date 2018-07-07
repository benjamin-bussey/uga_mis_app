import 'package:flutter/material.dart';
import '../ui/staff.dart';
import '../ui/course.dart';
import '../ui/about.dart';

final bulldogRed = Color(0xFFBA0C2F);

class Home extends StatefulWidget {
  final List facultyData;
  final List courseData;

  Home(this.facultyData, this.courseData);

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
        title: const Text('MIS - Terry College of Business'),
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
          const BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            title: const Text(
              'Faculty',
            ),
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.book),
            title: const Text('Courses'),
          ),
        ],
        fixedColor: bulldogRed,
      ),
    );
  }
}

