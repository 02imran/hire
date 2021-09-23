

import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';

import '../../../constants.dart';

class SellerEstimateButton extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomeButton(
          text: 'Estimation:',
          press: () {},
          color: kSuccessColor,
          right: 10,
          left: 10,
        ),
        Row(
          children: [
            CustomeButton(
              text: '\$',
              press: () {},
              color: Colors.grey,
              right: 0,
              left: 0,
            ),
            SizedBox(width: 5),
            CustomeButton(
              text: '\৳',
              press: () {},
              color: kSuccessColor,
              right: 0,
              left: 0,
            ),
          ],
        )
      ],
    );
  }
}
