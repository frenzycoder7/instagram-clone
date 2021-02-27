import 'package:flutter/material.dart';
import 'package:instagram/Widget/SearchScroll.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {},
      child: Container(
        child: Column(
          children: [
            SearchScroll(),
            Container(
              child: Expanded(
                child: GridView.builder(
                  itemCount: 30,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoRjImL2bACL16BFKr1yseggZ0-xHlKrQU5Q&usqp=CAU',
                      ),
                    );
                  },
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
