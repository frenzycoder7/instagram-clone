import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  String name;
  String imageUrl;
  bool seen;
  StoryItem({this.name, this.imageUrl, this.seen});
  @override
  Widget build(BuildContext context) {
    print(name);
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.redAccent, Colors.yellowAccent],
                tileMode: TileMode.repeated,
              ),
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: seen ? Colors.transparent : Colors.white,
              child: CircleAvatar(
                radius: 33,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoRjImL2bACL16BFKr1yseggZ0-xHlKrQU5Q&usqp=CAU'),
                ),
              ),
            ),
          ),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
