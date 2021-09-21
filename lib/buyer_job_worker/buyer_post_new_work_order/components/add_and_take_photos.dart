

import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';

import '../../../constants.dart';

class AddAndTakePhoto extends StatelessWidget {
  const AddAndTakePhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomeButton(
              text: 'Add Photos',
              press: () {},
              color: kSuccessColor,
              left: 5,
              right: 5,
            ),
            SizedBox(width: 10),
            CustomeButton(
              text: 'Take Photo',
              press: () {},
              color: kSuccessColor,
              left: 5,
              right: 5,
            ),
            SizedBox(width: 10),
            Text(
              'Maximum 2 photos*\nmax file size 10 MB',
              style: TextStyle(fontSize: 9),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration:
                  BoxDecoration(color: Colors.grey.withOpacity(.4)),
            ),
            SizedBox(width: 10),
            Container(
              height: 60,
              width: 60,
              decoration:
                  BoxDecoration(color: Colors.grey.withOpacity(.4)),
            ),
            SizedBox(width: 10),
            Container(
              height: 60,
              width: 60,
              decoration:
                  BoxDecoration(color: Colors.grey.withOpacity(.4)),
            ),
          ],
        ),
      ],
    );
  }
}