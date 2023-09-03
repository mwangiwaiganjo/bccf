import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytextfield extends StatelessWidget {
  final controller;
  final String hintText;
  const Mytextfield({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blueGrey)),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: GoogleFonts.abel(textStyle: TextStyle(color: Colors.black, letterSpacing:.5, fontSize: 20,)) ),
      ),
    );
  }
}
