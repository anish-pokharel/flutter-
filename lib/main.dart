import 'package:flutter/material.dart';
import 'package:my_first_project/pages/home_page.dart';
import 'package:my_first_project/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  @override
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      darkTheme: ThemeData(
          // brightness: Brightness.dark,
        // primarySwatch: Colors.red
      ),
      initialRoute: "/home",
      routes:{
        "/" : (context)=> LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },

    );
  }
}