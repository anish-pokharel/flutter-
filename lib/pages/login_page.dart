import 'package:flutter/material.dart';
import 'package:my_first_project/utilis/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
      child:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_page.png",
              fit:BoxFit.cover,
              // height:900,
            ),
            SizedBox(
              height: 20,
              // child: Text("anish"),
            ),
            Text("Welcome to Login Page", style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
            child:Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter the UserName",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter the password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                }, child: Text("Login "),
                  style: TextButton.styleFrom(minimumSize: Size(150,40)),
                  

                )
              ],
            ),
            )
            ]
        ),
      )

    );
  }
}
