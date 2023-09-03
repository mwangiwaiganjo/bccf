import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
class page2 extends StatelessWidget {
  const page2({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Lottie.asset("assets/images/notifications.json"),
          Column(
            children: [
              Text(
                "events and reminders".toUpperCase(),
                style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.black, letterSpacing:.5, fontSize: 35,fontWeight: FontWeight.bold),),
              ),
              Text(
                "You will be able to recieve notification and events of ongoing events in the church and the schedule of programs",
                textAlign: TextAlign.center,
                style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.black, letterSpacing:.5, fontSize: 20,),),
              )
            ],
          ),
         SizedBox( height: 100.0,)
        ]),
      ),
    );
  }
}