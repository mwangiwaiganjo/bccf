import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Lottie.asset("assets/images/community.json"),
        Column(
          children: [
            Text(
              "connect with the congregation".toUpperCase(),
              style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.black, letterSpacing:.5, fontSize: 35,fontWeight: FontWeight.bold),),
            ),
            Text(
              "Get a chance to communicate with our congreation using our interreactive segments",
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