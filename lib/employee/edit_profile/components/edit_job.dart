import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/components/text_form_personal.dart';
import 'package:hire_app/employee/home/home_screen.dart';
import '../../../constants.dart';
import 'picture_upload.dart';

class EditJob extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'চাকরি সংক্রান্ত তথ্য / Job Information',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        SizedBox(height: 20),
        textFormPersonal(
            name: 'বর্তমান বেতন / Current salary',
            icon: Icon(Icons.arrow_drop_down)),
        textFormPersonal(
            name: 'কাঙ্খিত বেতন / Expected salary',
            icon: Icon(Icons.arrow_drop_down)),
        textFormPersonal(
            name: 'যে কাজ খুজছি / Looking for job in',
            icon: Icon(Icons.arrow_drop_down)),
        textFormPersonal(
          name:
              'কয়েকদিনের মধ্যে যোগদান করতে পারব /\nDuration for joinig to new job',
          icon: Icon(Icons.arrow_drop_down),
        ),
        Row(
          children: [
            PictureUpload(text: 'নিজের ছবি আপলোড করুন/Upload your picture'),
          ],
        ),
        textFormPersonal(
            name: 'নিজের দক্ষতা নির্বাচন করুন / Choose\nyour experince',
            icon: Icon(Icons.arrow_drop_down)),
        textFormPersonal(
            name:
                'উক্ত দক্ষতায় কত দিনের অভিজ্ঞতা আছে /\nYears of experince in avobe expertise',
            icon: Icon(Icons.arrow_drop_down)),
        SizedBox(height: 20),
        Center(
          child:
              CustomeButton(text: 'Submit', press: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
              }, color: kButtonColor),
        ),
        SizedBox(height: 20),
        Text(
          'By submitting you choose to agree to our terms and\ncondition and privacy policy',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 11),
        ),
        SizedBox(height: 20),
      ],
    );
  }

}
