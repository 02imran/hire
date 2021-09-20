

import 'package:flutter/material.dart';
import 'package:hire_app/components/user_data.dart';

class JobInfo extends StatelessWidget {
  const JobInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('চাকরি সংক্রান্ত তথ্য / Job Information',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
        SizedBox(height: 20),
        UserData(text1: 'বর্তমান বেতন / Current salary', text2: 'BDT 20,000'),
        UserData(text1: 'কাঙ্খিত বেতন / Expected salary', text2: 'BDT 20,000'),
        UserData(text1: 'যে কাজ খুজছি / Looking for job in', text2: '24'),
        UserData(
            text1:
                'কয়েকদিনের মধ্যে যোগদান করতে পারব /\nDuration for joinig to new job',
            text2: '14 days'),
        UserData(
            text1: 'নিজের দক্ষতা নির্বাচন করুন / Choose\nyour experince',
            text2: ''),
        UserData(
            text1:
                'উক্ত দক্ষতায় কত দিনের অভিজ্ঞতা আছে /\nYears of experince in avobe expertise',
            text2: ''),
            
            
      ],
    );
  }
}
