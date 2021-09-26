import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_app/components/company_details.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/employee/company_profile/company_profile.dart';

class DetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          CompanyDetails(),
          SizedBox(height: 20),
          Text(
            'Massage:',
            style: kTextStyle,
          ),
          SizedBox(height: 20),
          Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomeButton(
                text: 'View company\nProfile',
                press: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => CompanyProfile()));
                },
                color: kButtonColor,
                left: 10,
                right: 10,
              ),
              SizedBox(
                width: 15,
              ),
              CustomeButton(
                text: 'Call Company',
                press: () {},
                color: kSuccessColor,
                left: 10,
                right: 10,
              ),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}
