
import 'package:flutter/material.dart';
import 'package:hire_app/components/user_data.dart';

class BuyerFactoryProfile extends StatelessWidget {
  const BuyerFactoryProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        UserData(text1: 'Mill Name', text2: '1971'),
        UserData(text1: 'Contact Person', text2: 'name'),
        UserData(text1: 'M/C Type', text2: 'dhaka'),
        UserData(text1: 'Floor Condition', text2: '059169666'),
        UserData(text1: 'Total No M/C', text2: ''),
        UserData(text1: 'Total No Of Worker', text2: ''),
        UserData(text1: 'Location Of Mill', text2: ''),
        UserData(text1: 'Total Capacity Of Production', text2: ''),
        UserData(
            text1: 'Proposed Rate: Yds/meter/kgs/lbs/pcs', text2: ''),
        UserData(text1: 'Delivery Time', text2: ''),
        UserData(text1: 'Factory Open Hours', text2: ''),
      ],
    );
  }
}

