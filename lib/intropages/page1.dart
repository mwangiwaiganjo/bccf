import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Lottie.asset("assets/images/bible.json"),
        Column(
          children: [
            Text(
              "word of the day".toUpperCase(),
              style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.black, letterSpacing:.5, fontSize: 35,fontWeight: FontWeight.bold),),
            ),
            Text(
              "Get your soul and spirit enriched with the word of the day from our panel of residential pastors",
              textAlign: TextAlign.center,
              style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.black, letterSpacing:.5, fontSize: 20,),),
            )
          ],
        ),
        SizedBox(height: 50.0,)
      ]),
    );
  }
}
