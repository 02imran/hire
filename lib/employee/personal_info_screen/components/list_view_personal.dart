import 'package:flutter/material.dart';
import 'package:hire_app/components/user_data.dart';

class ListViewPersonal extends StatelessWidget {
  const ListViewPersonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          'ব্যাক্তিগত তথ্য / Personal Information',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        SizedBox(height: 20),
        UserData(text1: 'নাম / Name', text2: 'Md Basion'),
        UserData(text1: 'বৈবাহিক অবস্থা / Maritual status', text2: 'Jannah'),
        UserData(text1: 'বয়স / Age', text2: '24'),
        UserData(text1: 'লিঙ্গ / Gender', text2: 'Male'),
        UserData(text1: 'জেলা / District', text2: ''),
        UserData(text1: 'থানা / Thana', text2: ''),
        UserData(text1: 'পোস্ট অফিস / Post Office', text2: ''),
        UserData(text1: 'গ্রাম অথবা এলাকা', text2: ''),
      ],
    );
  }
}

