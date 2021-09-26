import 'package:flutter/material.dart';
import 'edit_job.dart';
import 'edit_personal_info.dart';
import 'picture_upload.dart';

class EditProfileBody extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                'To proceed with your application please\nfill out the following information',
                style: TextStyle(fontSize: 18),
              ),
              EditPersonalInfo(),
              PictureUpload(text: 'এনআইডি এর সামনের দিক/NID front side'),
              PictureUpload(text: 'এনআইডি এর পেছনের দিক/NID front side'),
              EditJob()
            ],
          ),
        ),
      ),
    );
  }

}
