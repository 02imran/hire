import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/employeer/home/components/search.dart';

class BuyNowBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              'Welcome, Abdul Kadir!',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 20),
            Text(
              'Search your desire candidate:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            SerachBar(
              color: Color(0xFF46AE69),
              press: () {},
            ),
            TextButton(
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  content: Text(
                    'Your Account will be activated after you purches a subscription pakage',
                    style: TextStyle(fontSize: 18),
                  ),
                  actions: [
                    Center(
                      child: CustomeButton(
                          text: 'Buy Now', press: () {}, color: kTextColor),
                    )
                  ],
                ),
              ),
              child: Text('buy'),
            )
          ],
        ),
      ),
    );
  }
}
