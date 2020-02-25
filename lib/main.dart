import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: 'Bottom Navigation View',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;

  Widget callPage(int currentIndex) {
    switch(currentIndex) {
      case 0:
//        return PageOne();
        break;
      case 1:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       title: Text(
         "Flutter App",
         style: TextStyle(
           color: Colors.black
         ),
       ),
     ),
     body: callPage(_currentIndex),
     bottomNavigationBar: CurvedNavigationBar(
       items: <Widget>[
         Icon(
           Icons.search,
           size: 20,
           color: Colors.black,
         ),
         Icon(
           Icons.home,
           size: 20,
           color: Colors.black,
         ),
       ],
       color: Colors.white,
       backgroundColor: Colors.deepOrange,
       buttonBackgroundColor: Colors.deepOrange,
       onTap: (index) {
         setState(() {
          callPage(index);
         });
       },
       animationDuration: Duration(
         milliseconds: 200,
       ),
       animationCurve: Curves.easeIn,
       index: _currentIndex,
     ),
   );
  }

}