import 'package:flutter/material.dart';
import 'package:instagram/Database/Models/StoryModel.dart';
import 'package:flutter/foundation.dart';

class Data extends ChangeNotifier {
  List<StoryModel> _storyModel = [
    StoryModel(name: '__error_403__', imageUrl: '', seen: true),
    StoryModel(name: 'ujjval9890', imageUrl: '', seen: false),
    StoryModel(name: 'rajnnesh654', imageUrl: '', seen: true),
    StoryModel(name: 'pankaj56', imageUrl: '', seen: false),
    StoryModel(name: 'iamjack57', imageUrl: '', seen: true),
    StoryModel(name: 'satyam56', imageUrl: '', seen: true),
    StoryModel(name: 'ashish11dx', imageUrl: '', seen: false),
    StoryModel(name: 'iamhemant', imageUrl: '', seen: false),
    StoryModel(name: 'rjraushan', imageUrl: '', seen: false),
    StoryModel(name: 'anno', imageUrl: '', seen: false),
    StoryModel(name: '__ravi', imageUrl: '', seen: false),
    StoryModel(name: '__r_a_v_s_u__', imageUrl: '', seen: false),
    StoryModel(name: '_bhumihaarji__', imageUrl: '', seen: true),
  ];
  List<StoryModel> get storyList {
    return _storyModel;
  }
}
