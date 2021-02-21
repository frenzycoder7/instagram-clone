import 'package:flutter/material.dart';

class CameraOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            'Aa',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Icon(
            Icons.all_inclusive_sharp,
            size: 30,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Icon(
            Icons.auto_awesome_mosaic,
            size: 30,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Icon(
            Icons.album,
            size: 30,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Icon(
            Icons.circle,
            size: 30,
            color: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Icon(
            Icons.keyboard_arrow_down,
            size: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
