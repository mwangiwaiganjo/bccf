import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class email extends StatefulWidget {
  final controller;
  final String hintText;
  const email({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<email> createState() => _emailState();
}

class _emailState extends State<email> {
  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp("@gmail.com");
    final isEmailvalid = emailRegex.hasMatch(email ?? '');
    if (!isEmailvalid) {
      return "Please Enter A Valid Email";
    }
    return null;
  }
 void main(){
 }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
          controller: widget.controller,
          validator: validateEmail,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blueGrey)),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: widget.hintText,
              hintStyle: GoogleFonts.abel(
                  textStyle: TextStyle(
                color: Colors.black,
                letterSpacing: .5,
                fontSize: 20,
              )))),
    );
  }
}
