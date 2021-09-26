import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/components/text_form_personal.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/employee/edit_profile/components/picture_upload.dart';

class FillBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To proceed with your application to to become an employer, please fill out the following information',
                style: kTextStyle,
              ),
              textFormPersonal(name: 'Company Name'),
              textFormPersonal(name: 'Company Telephone Number'),
              textFormPersonal(name: 'Company Email'),
              textFormPersonal(name: 'Company Location'),
              textFormPersonal(
                  name: 'Looking To Hire (you can select multiple)'),
              textFormPersonal(name: 'Number Of Stuff'),
              textFormPersonal(name: 'Selary type (you can select multiple)'),
              textFormPersonal(name: 'Compaly Owner Name'),
              textFormPersonal(name: 'Company Established In'),
              SizedBox(height: 30),
              Text(
                'Please upload requred documents',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              PictureUpload(text: 'Trade License'),
              PictureUpload(text: 'VAT'),
              PictureUpload(text: 'NID Of Owener'),
              PictureUpload(text: 'Factory License'),
              PictureUpload(text: 'Fire License'),
              PictureUpload(text: 'BTMA/BGMA/BKMEA/Others'),
              SizedBox(height: 30),
              Center(
                child: CustomeButton(
                    text: 'Submit', press: () {}, color: kButtonColor),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'By submitting you choose to agree to our terms and\nconditon and privacy policy',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
