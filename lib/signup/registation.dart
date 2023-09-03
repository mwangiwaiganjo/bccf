import 'package:bccf/componets/branch.dart';
import 'package:bccf/componets/contact.dart';
import 'package:bccf/componets/gender.dart';
import 'package:bccf/componets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final fnamecontroller = TextEditingController();
  final lnamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final contactcontroller = TextEditingController();
  final timecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Icon(
                Icons.lock,
                color: Colors.white,
                size: 50,
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    "Welcome to BCCF app".toUpperCase(),
                    style: GoogleFonts.abel(
                      textStyle: TextStyle(
                          color: Colors.white,
                          letterSpacing: .5,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "A place of Destiny",
                    style: GoogleFonts.abel(
                      textStyle: TextStyle(
                          color: Colors.white,
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
              Mytextfield(
                controller: fnamecontroller,
                hintText: "First Name",
              ),
              SizedBox(
                height: 10,
              ),
              Mytextfield(
                controller: lnamecontroller,
                hintText: "Last Name",
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              contact(
                controller: contactcontroller,
                hintText: "Enter Your Contact"),
              SizedBox(height: 10,),
              Gender(),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              Branches(),
              SizedBox(height: 25,)
            ],
          ),
        ),
      )),
    );
  }
}
