

import 'package:flutter/material.dart';

class WantWorkOrder extends StatelessWidget {
  const WantWorkOrder({
    Key? key,
    this.text,
    this.color,
    this.press,
  }) : super(key: key);
  final String? text;
  final Color? color;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Icon(
                Icons.add_shopping_cart,
                color: color,
              ),
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
              ),
              child: Center(
                child: Text(
                  text!,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
