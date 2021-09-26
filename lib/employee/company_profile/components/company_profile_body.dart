import 'package:flutter/material.dart';
import 'package:hire_app/components/company_details.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/components/user_data.dart';
import 'package:hire_app/constants.dart';

class CompanyProfileBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            CompanyDetails(),
            SizedBox(height: 20),
            Text(
              'Company Profile:',
              style: kTextStyle,
            ),
            SizedBox(height: 20),
            UserData(text1: 'Company Established in', text2: 'Md Basion'),
            UserData(text1: 'Owner Name', text2: 'Jannah'),
            UserData(text1: 'Location', text2: '24'),
            UserData(text1: 'Phone Number', text2: 'Male'),
            UserData(text1: 'Email', text2: ''),
            UserData(text1: 'Num Of stuff', text2: ''),
            UserData(text1: 'Selary Type', text2: ''),
            UserData(text1: 'Memberships', text2: ''),
            SizedBox(height: 100),
            Center(
              child: CustomeButton(
                  text: 'Call Company', press: () {}, color: kSuccessColor),
            )
          ],
        ),
      ),
    );
  }
}
