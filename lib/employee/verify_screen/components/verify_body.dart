import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/employee/otp_screen/otp_screen.dart';

class VerifyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  size: 70,
                  color: kTextColor,
                ),
                Text(
                  'HIRE',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: kTextColor),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Please enter your phone number for \nOTP verification',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                // prefix: Icon(Icons.safety_divider),
                prefixText: '+088',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            CustomeButton(
              text: 'PROCEED',
              color: kButtonColor,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>OtpScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
