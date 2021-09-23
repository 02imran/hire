
import 'package:flutter/material.dart';
import 'package:hire_app/components/user_data.dart';

class SellerBuyerCompanyProfile extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserData(text1: 'Company Established in', text2: '1971'),
        UserData(text1: 'Owner Name', text2: 'name'),
        UserData(text1: 'Location', text2: 'dhaka'),
        UserData(text1: 'Phone Number', text2: '059169666'),
        UserData(text1: 'Email', text2: ''),
        UserData(text1: 'Number Of Stuff', text2: ''),
        UserData(text1: 'Memberships', text2: ''),
      ],
    );
  }
}
