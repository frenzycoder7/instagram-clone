import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Timeline extends StatelessWidget {
  String gName;
  String gUrl;
  String nComment;
  String nLikes;
  String nTime;
  String nImage;
  String gCaption;

  Timeline(
      {this.gName,
      this.gUrl,
      this.nComment,
      this.nLikes,
      this.nImage,
      this.nTime,
      this.gCaption});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                          radius: 23,
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 21,
                              backgroundImage: NetworkImage(gUrl),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          gName,
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                Icon(Icons.more_vert,color: Colors.black,)
              ],
            ),
          ),

          //Image Area---
          Container(
            child: Image.network(
              nImage,
              fit: BoxFit.fitWidth,
              //height: 180.0,
              width: double.infinity,
            ),
          ),

          //Likes Comments And somthing
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          EvaIcons.heartOutline,
                          size: 30,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print("Eva Icon heart Pressed");
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          EvaIcons.messageCircleOutline,
                          size: 30,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print("Eva Icon heart Pressed");
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.send_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print("Eva Icon heart Pressed");
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.bookmark_border,
                    size: 30,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          //Likes Captions And Number of Comments
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    nLikes + ' Likes',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        gName + '  ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(gCaption)
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    nComment + ' comments',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoRjImL2bACL16BFKr1yseggZ0-xHlKrQU5Q&usqp=CAU'),
                      ),
                      Text(
                        '  Type Your Comment here....',
                        style: TextStyle(color: Colors.grey),
                      )
                      // Container(
                      //   child: Form(
                      //     child: Container(
                      //       child: TextFormField(
                      //         obscureText: false,
                      //         decoration: InputDecoration(
                      //           border: InputBorder.none,
                      //           fillColor: Colors.grey,
                      //           filled: true,
                      //         ),
                      //         validator: (value) {
                      //           if (value.isEmpty) {
                      //             print("Username is Empty");
                      //           }
                      //         },
                      //         onChanged: (value) {
                      //           //
                      //         },
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    nTime,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
