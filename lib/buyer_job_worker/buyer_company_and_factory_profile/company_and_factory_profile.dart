import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'components/company_and_factory_profile_body.dart';

class CompanyAndFactoryProfile extends StatelessWidget {
  const CompanyAndFactoryProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: kAppBarColor,
      ),
      body: CompanyAndFactoryProfileBody(),
    );
  }
}
