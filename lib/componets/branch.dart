import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Branches extends StatefulWidget {
  const Branches({super.key});

  @override
  State<Branches> createState() => _BranchesState();
}

class _BranchesState extends State<Branches> {
  var _value = "BRANCH";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.house_outlined),
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
          items: [DropdownMenuItem(child: Text("select your current branch",style: GoogleFonts.abel(fontSize: 20, color:Colors.black)),value:"BRANCH",),
          DropdownMenuItem(child: Text("Uthiru 87",style: GoogleFonts.abel(fontSize: 20, color:Colors.black),),value:"UTHIRU 87",),
          DropdownMenuItem(child: Text("Nyeri",style: GoogleFonts.abel(fontSize: 20, color:Colors.black)),value:"NYERI",)
          ],
          onChanged: (v){}),
    );
  }
}