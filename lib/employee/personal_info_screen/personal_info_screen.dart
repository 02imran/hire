
import 'package:flutter/material.dart';
import 'components/personal_info_body.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersonalInfoBody(),
      
    );
  }
}