import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Navigation/HomeNav.dart';
import 'package:instagram/Navigation/SearchNav.dart';
import 'package:instagram/Screens/ReelsScree.dart';
import 'package:instagram/Screens/SearchScreen.dart';

import 'package:instagram/Screens/TimelineScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _themeChanger = 0;
  List _themeList = [
    TimeLineScreen(),
    SearchScreen(),
    ReelsScreen(),
    Text('Activities'),
    Text('Profile')
  ];
  List _navList = [
    HomeNav(),
    SearchNav(),
    Text('Reels'),
    Text('Activities'),
    Text('Profile'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _themeChanger = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: _navList[_themeChanger]),
      body: _themeList[_themeChanger],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              size: 30,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
            label: 'reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              EvaIcons.heartOutline,
              size: 30,
            ),
            label: 'reels',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoRjImL2bACL16BFKr1yseggZ0-xHlKrQU5Q&usqp=CAU'),
            ),
            label: 'reels',
          ),
        ],
        currentIndex: _themeChanger,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
