

import 'package:flutter/material.dart';

import 'text_form_personal.dart';

class EditPersonalInfo extends StatelessWidget {
  const EditPersonalInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Text(
          'ব্যাক্তিগত তথ্য / Personal Information',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        textFormPersonal(name: 'নাম / Name'),
        Row(
          children: [
            Expanded(
                child:
                    textFormPersonal(name: 'বৈবাহিক অবস্থা / Maritual status')),
            SizedBox(width: 20),
            Expanded(child: textFormPersonal(name: 'ইমেইল / Email'))
          ],
        ),
        Row(
          children: [
            Expanded(child: textFormPersonal(name: 'বয়স / Age')),
            SizedBox(width: 20),
            Expanded(child: textFormPersonal(name: 'লিঙ্গ / Gender'))
          ],
        ),
        textFormPersonal(name: 'জেলা / District'),
        textFormPersonal(name: 'থানা / Thana'),
        textFormPersonal(name: 'পোস্ট অফিস / Post Office'),
        textFormPersonal(name: 'গ্রাম অথবা এলাকা'),
      ],
    );
  }
}
