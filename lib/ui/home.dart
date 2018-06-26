import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  final _bulldog_red = Color(0xFFBA0C2F);
  int _counter = 0;

  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('MIS App'),
        backgroundColor: _bulldog_red,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Display Area",
                style: new TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30.2,
                    fontWeight: FontWeight.w400),
              ),
            ),
            new Expanded(
                child: new Center(
              child: new Text(
                'Another Message',
                style: new TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 50.0,
                ),
              ),
            )),
            new Center(
              child: new Text('$_counter'),
            ),
            new MaterialButton(
              color: Colors.blue,
              onPressed: _increaseCounter,
              child: new Text('Push Me!'),
            )
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text('Home'),),
        new BottomNavigationBarItem(icon: new Icon(Icons.person), title: new Text('Faculty'),),
        new BottomNavigationBarItem(icon: new Icon(Icons.book), title: new Text('Courses'),),
      ], fixedColor: _bulldog_red,),
    );
  }
}
