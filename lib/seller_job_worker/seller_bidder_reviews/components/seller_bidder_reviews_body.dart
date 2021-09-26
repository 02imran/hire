import 'package:flutter/material.dart';
import 'package:hire_app/constants.dart';

class SellerBidderReviewsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                ...List.generate(2, (index) => SellerNameRatingAndDesc()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SellerNameRatingAndDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text('Reviews', style: TextStyle(fontSize: 20)),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Abdullah al matin',
              style: TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                Icon(Icons.star, color: kStarColor, size: 20),
                Text(
                  '4.5',
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ],
        ),
        Text(
          'Jobwork Seller',
          style: TextStyle(fontSize: 10),
        ),
        SizedBox(height: 10),
        Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s'),
        Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}