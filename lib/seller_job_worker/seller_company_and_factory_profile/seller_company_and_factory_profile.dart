import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'components/seller_company_and_factory_profile_body.dart';

class SellerCompanyAndFactoryProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: kAppBarColor,
      ),
      body: SellerCompanyAndFactoryProfileBody(),
    );
  }
}
