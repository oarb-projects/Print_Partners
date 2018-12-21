import 'package:flutter/material.dart';
import 'pages/auth.dart';
import 'pages/servicios.dart';
import 'pages/detalle.dart';

void main() => runApp(MyApp());

final colorcito=const Color(0xFFff6347);
// var a = Colors.black;

class MyApp extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: colorcito
      ),
      home: AuthPage(),
      routes: {
          // '/calendarDay': (BuildContext context) =>
          // _isAuthenticated ? CalendarDayPage() : AuthPage(),
          '/services': (BuildContext context) =>Services(),
          '/detail': (BuildContext context) =>Detail(),
      },
    );
  } 
   
}
