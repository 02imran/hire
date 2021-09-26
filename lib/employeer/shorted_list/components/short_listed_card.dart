

import 'package:flutter/material.dart';

class ShortedlistedCard extends StatelessWidget {
  const ShortedlistedCard({
    Key? key,
    this.text1,
    this.totalNumOfcanditate,
  }) : super(key: key);

  final String? text1;
  final int? totalNumOfcanditate;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text1!),
                Text('$totalNumOfcanditate candidate'),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Germents Factory ',
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
