

import 'package:flutter/material.dart';

class Estimation extends StatelessWidget {
  const Estimation({
    Key? key,
    this.estimateText,
    this.valu1,
    this.value2,
    this.dayText,
  }) : super(key: key);
  final String? estimateText, dayText;
  final int? valu1, value2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            estimateText!,
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          SizedBox(height: 10),
          Text('Cost/Yard: ৳ $valu1 $dayText'),
          Text('Total Cost: ৳ $value2 $dayText'),
        ],
      ),
    );
  }
}
