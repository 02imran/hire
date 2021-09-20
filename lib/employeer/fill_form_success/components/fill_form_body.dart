import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';

class FillFormBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/check.svg',
              color: kSuccessColor,
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Thanks to taking the time to \n fill the form',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 40),
            CustomeButton(text: 'Proceed', press: () {}, color: kButtonColor)
          ],
        ),
      ),
    );
  }
}
