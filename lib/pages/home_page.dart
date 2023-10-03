import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days =30 ;
    final String name ="anish ";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To  $days challenge by $name is "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
