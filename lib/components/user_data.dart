

import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  const UserData({
    Key? key,
    this.text1,
    this.text2,
  }) : super(key: key);
  final String? text1, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1!),
          Text(text2!),
        ],
      ),
    );
  }
}
