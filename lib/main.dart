import 'package:flutter/material.dart';
import 'package:my_first_project/pages/home_page.dart';
import 'package:my_first_project/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_project/utilis/routes.dart';
import 'package:my_first_project/widgets/themes.dart';
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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      
      initialRoute: "/",
      routes:{
        "/" : (context)=> HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },

    );
  }
}