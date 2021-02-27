import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Color> colors = <Color>[Colors.red, Colors.blue, Colors.green];
    return Scaffold(
      body: TikTokStyleFullPageScroller(
        contentSize: colors.length,
        swipePositionThreshold: 0.2,
        swipeVelocityThreshold: 2000,
        animationDuration: const Duration(milliseconds: 300),
        builder: (BuildContext context, int index) {
          return Container(
            color: colors[index],
            child: Text(
              '$index',
              style: const TextStyle(fontSize: 48, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
