import 'package:flutter/material.dart';

class SearchScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 4,
      padding: EdgeInsets.all(5),
      height: 50,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Chip(
              elevation: 4,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey,
              label: Text('Avatar'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Chip(
              elevation: 4,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey,
              label: Text('Avatar'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Chip(
              elevation: 4,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey,
              label: Text('Avatar'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Chip(
              elevation: 4,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey,
              label: Text('Avatar'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Chip(
              elevation: 4,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey,
              label: Text('Avatar'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Chip(
              elevation: 4,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey,
              label: Text('Avatar'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Chip(
              elevation: 4,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey,
              label: Text('Avatar'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Chip(
              elevation: 4,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey,
              label: Text('Avatar'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}
