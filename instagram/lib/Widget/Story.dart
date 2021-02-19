import 'package:flutter/material.dart';
import 'package:instagram/Widget/StoryItem.dart';
import 'package:provider/provider.dart';
import './../Database/Data/Data.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, storyData, child) {
        return Container(
          height: 100,
          child: ListView.builder(
            itemCount: storyData.storyList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return StoryItem(
                name:
                    index == 0 ? 'Your Story' : storyData.storyList[index].name,
                imageUrl: storyData.storyList[index].imageUrl,
                seen: storyData.storyList[index].seen,
              );
            },
          ),
        );
      },
    );
  }
}
