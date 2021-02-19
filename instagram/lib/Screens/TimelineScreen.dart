import 'package:flutter/material.dart';
import 'package:instagram/Widget/Story.dart';
import './../Widget/Timeline.dart';

class TimeLineScreen extends StatelessWidget {
  refresh() {}
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => refresh(),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Story(),
          Divider(),
          Timeline(
            gName: 'Haq_se_single',
            gUrl:
                'https://i.pinimg.com/564x/5c/fd/82/5cfd82f0ca49609545b369c03c2ee5a7.jpg',
            gCaption: 'Tag Someone...',
            nLikes: '231',
            nComment: '545',
            nTime: '18 minutes ago',
            nImage:
                'https://images.indianexpress.com/2019/05/tiktok-india-funny-videos-of-the-week-759.jpg',
          ),
          Timeline(
            gName: '_chutiyapa_',
            gUrl:
                'https://i.pinimg.com/236x/08/c1/c7/08c1c731e92c04aa6fe19c7bec6be46b--jo-omeara-collection.jpg',
            gCaption: 'Rate this',
            nLikes: '96',
            nComment: '132',
            nTime: 'Just now',
            nImage:
                'https://pi.tedcdn.com/r/talkstar-assets.s3.amazonaws.com/production/playlists/playlist_398/reconnect_with_nature.jpg?',
          ),
          Timeline(
            gName: 'Haq_se_single',
            gUrl:
                'https://i.pinimg.com/564x/5c/fd/82/5cfd82f0ca49609545b369c03c2ee5a7.jpg',
            gCaption: 'Tag Someone...',
            nLikes: '231',
            nComment: '545',
            nTime: '18 minutes',
            nImage:
                'https://images.indianexpress.com/2019/05/tiktok-india-funny-videos-of-the-week-759.jpg',
          ),
          Timeline(
            gName: 'Haq_se_single',
            gUrl:
                'https://i.pinimg.com/564x/5c/fd/82/5cfd82f0ca49609545b369c03c2ee5a7.jpg',
            gCaption: 'Tag Someone...',
            nLikes: '231',
            nComment: '545',
            nTime: '18 minutes ago',
            nImage:
                'https://images.indianexpress.com/2019/05/tiktok-india-funny-videos-of-the-week-759.jpg',
          ),
          Timeline(
            gName: '_chutiyapa_',
            gUrl:
                'https://i.pinimg.com/236x/08/c1/c7/08c1c731e92c04aa6fe19c7bec6be46b--jo-omeara-collection.jpg',
            gCaption: 'Rate this',
            nLikes: '96',
            nComment: '132',
            nTime: 'Just now',
            nImage:
                'https://pi.tedcdn.com/r/talkstar-assets.s3.amazonaws.com/production/playlists/playlist_398/reconnect_with_nature.jpg?',
          ),
          Timeline(
            gName: 'Haq_se_single',
            gUrl:
                'https://i.pinimg.com/564x/5c/fd/82/5cfd82f0ca49609545b369c03c2ee5a7.jpg',
            gCaption: 'Tag Someone...',
            nLikes: '231',
            nComment: '545',
            nTime: '18 minutes',
            nImage:
                'https://images.indianexpress.com/2019/05/tiktok-india-funny-videos-of-the-week-759.jpg',
          ),
        ],
      ),
    );
  }
}
