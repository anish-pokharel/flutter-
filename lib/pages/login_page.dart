import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Column(
        children: [
          // Image.asset("./../assets/images/login_page.png"),
          Image.asset("assets/images/login_page.png")
        // AssetImage('assets/images/login_page.png'
        //   Image(image: AssetImage("assets/images/login_page.png"));
        ],
      )
    );
  }
}
