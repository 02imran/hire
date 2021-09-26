import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/employee/edit_profile/edit_profile.dart';

import '../../../constants.dart';

class NidEdit extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text('এন আই ডি / NID'),
        Row(
          children: [
            Container(
              height: 110,
              width: 170,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 110,
              width: 170,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ],
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              CustomeButton(
                text: 'Edit Profile',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => EditProfile()));
                },
                color: kButtonColor,
              ),
              SizedBox(width: 10),
              CustomeButton(
                  text: 'Skip for now', press: () {}, color: Color(0xFF209F49)),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
