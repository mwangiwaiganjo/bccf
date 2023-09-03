import 'package:bccf/intropages/homepage.dart';
import 'package:bccf/signup/login.dart';
import 'package:flutter/material.dart';
import 'package:bccf/componets/email.dart';
import 'package:bccf/componets/password.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        )),
                        Text(
                          "Create An Account",
                          style: GoogleFonts.abel(
                            textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        )),
                      ],
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
                onPressed: () {},
                child: Text(
                  "sign up".toUpperCase(),
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
                  Text("Already A Member"),
                  SizedBox(
                    width: 7,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Login();
                        }));
                      },
                      child: Text(
                        "Login Now",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return homepage();
                    }));
                  },
                  child: Text("homepage"))
            ],
          ),
        ),
      ),
    );
  }
}
