import 'package:flutter/material.dart';
import 'package:hire_app/components/company_details.dart';

class CompanyAndFactoryProfileBody extends StatelessWidget {
  const CompanyAndFactoryProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Company & Factory profile',
              style: TextStyle(fontSize: 24),
            ),
            CompanyDetails(),
            SizedBox(height: 20),
            Text(
              'Company Profile',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
