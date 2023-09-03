import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  var _value = "GENDER";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_2_sharp),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.blueGrey)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
        value:_value ,
          items: [DropdownMenuItem(child: Text("select your gender",style: GoogleFonts.abel(fontSize: 20, color:Colors.black)),value:"GENDER",),
          DropdownMenuItem(child: Text("male",style: GoogleFonts.abel(fontSize: 20, color:Colors.black),),value:"MAlE",),
          DropdownMenuItem(child: Text("female",style: GoogleFonts.abel(fontSize: 20, color:Colors.black)),value:"FEMALE",)
          ],
          onChanged: (v){}),
    );
  }
}
