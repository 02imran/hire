import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';

import 'details_table.dart';

class OfferDetailsBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text('Offer Details', style: TextStyle(fontSize: 18)),
          SizedBox(height: 20),
          Text('Massage:', style: TextStyle(fontSize: 13)),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
            style: TextStyle(fontSize: 11),
          ),
          SizedBox(height: 40),
          Text('Details:'),
          DetailsTable(),
          SizedBox(height: 40),
          Center(
            child: CustomeButton(
              text: 'Candidate List',
              press: () {},
              color: kSuccessColor,
            ),
          )
        ],
      ),
    );
  }
}
