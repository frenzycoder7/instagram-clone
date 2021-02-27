import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.camera_alt_outlined),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/camera');
          },
        ),
        Text(
          'Instagram',
          style: GoogleFonts.lobsterTwo(
            fontSize: 30,
            fontWeight: FontWeight.w100,
          ),
        ),
        IconButton(
          icon: Icon(Icons.message_outlined),
          onPressed: () {
            Navigator.of(context).pushNamed('/chat');
          },
        )
      ],
    );
  }
}
