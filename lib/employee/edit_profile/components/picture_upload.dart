

import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';

import '../../../constants.dart';

class PictureUpload extends StatelessWidget {
  const PictureUpload({
    Key? key,
    @required this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(text!),
        SizedBox(height: 10),
        Row(
          children: [
            CustomeButton(
              text: 'Add photo',
              press: () {},
              color: kButtonColor,
              size: 12,
              left: 20,
              right: 20,
            ),
            SizedBox(width: 10),
            CustomeButton(
              text: 'Take Photo',
              press: () {},
              color: Color(0xFF810180),
              size: 12,
              left: 20,
              right: 20,
            ),
          ],
        )
      ],
    );
  }
}
