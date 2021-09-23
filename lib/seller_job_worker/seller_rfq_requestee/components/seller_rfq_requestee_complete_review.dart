
import 'package:flutter/material.dart';

import '../../../constants.dart';

class BidderExperinceCompleteAndReview extends StatelessWidget {
  BidderExperinceCompleteAndReview({
    Key? key,
    this.expRev,
    required this.text,
  }) : super(key: key);
  final String? expRev;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$expRev',
          style: TextStyle(
              color: kAppBarColor, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text(
          text!,
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
}
