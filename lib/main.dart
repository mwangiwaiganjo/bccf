import 'package:bccf/onboarding.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pagescreen(),
    );
  }
}
