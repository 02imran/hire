
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CallMassage extends StatelessWidget {
  const CallMassage({
    Key? key,
    this.press,
    this.height,
    this.width,
    this.icon,
    this.text,
  }) : super(key: key);
  final GestureTapCallback? press;
  final double? height, width;
  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: kSuccessColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon!,
              size: 14,
              color: Colors.white,
            ),
            SizedBox(width: 3),
            Text(
              text!,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
