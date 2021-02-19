import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTimeout() {
    return Timer(Duration(seconds: 5), handleTimeout);
  }

  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    startTimeout();
  }

  handleTimeout() {
    changeScreen();
  }

  void changeScreen() async {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.network(
                  'https://www.brandchannel.com/wp-content/uploads/2016/05/instagram-new-logo-may-2016.jpg',
                  height: 100,
                  width: 100,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  'from',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 80),
                alignment: Alignment.center,
                child: Text(
                  'FACEBOOK',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
