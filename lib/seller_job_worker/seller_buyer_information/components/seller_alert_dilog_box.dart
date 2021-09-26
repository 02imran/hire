import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';

Future<dynamic> sellerRecordCellDilogBox(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Record Sell',
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
            Text('Did the sell happand?'),
            Row(
              children: [
                Radio(
                    value: 'Yes',
                    groupValue: 'Yes',
                    onChanged: (val) {
                      print(val);
                    }),
                Text('Yes'),
                Radio(
                    value: 'No',
                    groupValue: 'Yes',
                    onChanged: (val) {
                      print(val);
                    }),
                Text('No')
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Rate the bidder*'),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text('Write a review for bidder*'),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: CustomeButton(
                      text: 'Submit',
                      press: () {},
                      color: kSuccessColor,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
