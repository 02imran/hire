import 'package:flutter/material.dart';
import 'package:hire_app/employee/offer_screen/offer_screen.dart';

import '../../../constants.dart';

class ListHeader extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Your recent offers:',
          style: TextStyle(fontSize: 22),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => OfferScreen()));
          },
          child: Container(
            height: 15,
            width: 55,
            color: kButtonColor,
            child: Text(
              'View All',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
