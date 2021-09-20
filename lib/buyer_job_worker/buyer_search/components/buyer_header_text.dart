import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuyerHeaderText extends StatelessWidget {
  const BuyerHeaderText({
    Key? key,@required this.text1,@required this.text2,
  }) : super(key: key);
  final String? text1, text2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1!,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(color: kSuccessColor),
            child: Text(
              text2!,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
