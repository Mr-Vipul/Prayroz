import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 64,),

              Text(
                "Login",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w800,
                    fontSize: 30),
              ),

              // SizedBox(height: 25,),

              Text(
                "Add Your Details To Login",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),

              SizedBox(height: 25,),

              Container(
                decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(25)),
                child: TextField(autocorrect: false, controller: txtEmail, decoration: InputDecoration
                  (
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Your Email",
                  hintStyle: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
