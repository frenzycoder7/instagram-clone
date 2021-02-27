import 'package:flutter/material.dart';

class SearchNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 6,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(2),
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          // flex: 1,
          child: Container(
            child: IconButton(
              icon: Icon(Icons.qr_code_scanner),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
