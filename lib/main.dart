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
     body: Container(
       color: Colors.deepOrange,
       height: MediaQuery.of(context).size.height,
       width:  MediaQuery.of(context).size.width,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text(
             'this is just a demo app',
             style: TextStyle(
               color: Colors.white
             ),
           )
         ],
       ),
     ),
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
         switch(index) {
           case 0:
             return MaterialApp(
               title: 'Bottom Navigation View',
               home: MyHomePage(),
             );
             break;

         }
       },
       animationDuration: Duration(
         milliseconds: 200,
       ),
       animationCurve: Curves.easeIn,
       index: 1,
     ),
   );
  }

}