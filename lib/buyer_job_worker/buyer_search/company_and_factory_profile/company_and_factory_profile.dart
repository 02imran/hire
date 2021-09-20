import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_search/company_and_factory_profile/components/company_and_factory_profile_body.dart';

import '../../../constants.dart';

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
