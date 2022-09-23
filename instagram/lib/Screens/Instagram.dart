import 'package:flutter/material.dart';
import 'package:image_gallery_grid_fb/image_gallery_grid_fb.dart';

class Instagram extends StatefulWidget {
  const Instagram({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: GalleryImageGridFb(
          imageUrls: [
            "https://mikihome-listing.s3-ap-southeast-1.amazonaws.com/s3url_3045b488-1bae-11eb-b97f-62c21a3cbd5e_361b8b80-1bae-11eb-a7b7-a20f5861fd9f_2808920255876571.jpg",
            "https://mikihome-listing.s3-ap-southeast-1.amazonaws.com/s3url_3045b488-1bae-11eb-b97f-62c21a3cbd5e_366e2110-1bae-11eb-a7b7-a20f5861fd9f_2808920409209889.jpg",
            "https://mikihome-listing.s3-ap-southeast-1.amazonaws.com/s3url_3045b488-1bae-11eb-b97f-62c21a3cbd5e_32959f00-1bae-11eb-a7b7-a20f5861fd9f_2808919195876677.jpg",
          ],
          onTap: () {
            print("OK");
          },
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
