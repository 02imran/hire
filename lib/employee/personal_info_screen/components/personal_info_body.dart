import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hire_app/constants.dart';
import 'job_info.dart';
import 'list_view_personal.dart';
import 'nid_edit.dart';

class PersonalInfoBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Hi! We found following \ninformation about you!',
                  style: kTextStyle,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SvgPicture.asset(
                  'assets/svg/user.svg',
                  height: 70,
                  width: 70,
                  color: kSuccessColor,
                ),
              ),
              ListViewPersonal(),
              SizedBox(height: 20),
              JobInfo(),
              NidEdit()
            ],
          ),
        ),
      ),
    );
  }
}

