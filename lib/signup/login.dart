import 'package:bccf/componets/email.dart';
import 'package:bccf/componets/password.dart';
import 'package:bccf/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _formkey = GlobalKey<FormState>();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 75,
                ),
                Icon(
                  Icons.lock,
                  size: 50,
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Text(
                      "Welcome to BCCF app".toUpperCase(),
                      style: GoogleFonts.abel(
                        textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .5,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "A place of Destiny",
                      style: GoogleFonts.abel(
                        textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .5,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                email(
                  controller: emailcontroller,
                  hintText: "Enter your Email",
                ),
                SizedBox(
                  height: 15,
                ),
                Password(
                  controller: passwordcontroller,
                  hintText: "Enter password",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {}, child: Text("forgot password?"))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
            
                    _formkey.currentState!.validate();
                  },
                  child: Text(
                    "sign in".toUpperCase(),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      fixedSize: Size(300, 50),
                      textStyle:
                          GoogleFonts.abel(fontSize: 16, letterSpacing: .5),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      side: BorderSide(color: Colors.blueGrey),
                      shape: StadiumBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not Registered Yet?"),
                    SizedBox(
                      width: 7,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Signup();
                          }));
                        },
                        child: Text(
                          "Register Now",
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
