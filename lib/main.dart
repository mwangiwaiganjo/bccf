import 'package:bccf/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url:"https://gnkloatdlrumbeqrpzot.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdua2xvYXRkbHJ1bWJlcXJwem90Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTE1NzQ4MjIsImV4cCI6MjAwNzE1MDgyMn0.QYDJoKju259N5u34YMkGRoVX5mNVgeUBrFCajPek8T8",
  );
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
