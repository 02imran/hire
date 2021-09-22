import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_bidder_information_record_sell/buyer_bidder_information_record_sell.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';

Future<dynamic> areYouSureDilogBox(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Are You Sure?',
            style: TextStyle(fontSize: 22),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              color: Colors.red,
            ),
          ),
        ],
      ),
      actions: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Are you sure you want to you accept the following bid?'),
            newTextMetod(text1: 'Name:', text2: 'Demo text1'),
            newTextMetod(text1: 'Bid:', text2: '৳ 48,000'),
            newTextMetod(text1: 'Product:', text2: 'Demo text1'),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  CustomeButton(
                      text: 'Accept Bid',
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    BuyerBidderInformationRecaodSell()));
                      },
                      color: kSuccessColor)
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}

Row newTextMetod({String? text1, String? text2}) {
  return Row(
    children: [
      Text(
        text1!,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(text2!)
    ],
  );
}
