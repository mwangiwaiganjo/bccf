import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Password extends StatefulWidget {
  final controller;
  final String hintText;
  const Password({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final controller = TextEditingController();
  final hintText = "";
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
          controller: widget.controller,
          validator: (Password) => Password!.length < 6 ?
          'Password Should Not Atleast 6 letters':null,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: obsecure,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obsecure = !obsecure;
                    });
                  },
                  icon: Icon(obsecure == true ? Icons.visibility : Icons.visibility_off)),
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
