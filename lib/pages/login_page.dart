import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
      child:Column(
        children: [
          Image.asset("assets/images/login_page.png",
            fit:BoxFit.cover,
          ),
          SizedBox(
            height: 20,
            // child: Text("anish"),
          ),
          Text("Welcome to Login Page", style: TextStyle(
            fontSize: 22,
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
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                print("Hi my name is anish ");
              }, child: Text("Login "),
                style: TextButton.styleFrom(),

              )
            ],
          ),
          )

          ]
      )

    );
  }
}
