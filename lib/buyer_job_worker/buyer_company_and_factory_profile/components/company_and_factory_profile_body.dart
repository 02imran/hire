import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_product_details/buyer_product_details.dart';
import 'package:hire_app/buyer_job_worker/buyer_home_screen/components/buyer_header_text.dart';
import 'package:hire_app/buyer_job_worker/buyer_home_screen/components/feature_companies.dart';
import 'package:hire_app/components/company_details.dart';
import 'package:hire_app/constants.dart';
import 'buyer_company_profile.dart';
import 'buyer_factory_profile.dart';

class CompanyAndFactoryProfileBody extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Company & Factory profile',
                style: kTextStyle,
              ),
              CompanyDetails(),
              SizedBox(height: 20),
              Text(
                'Company Profile',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              BuyerCompanyProfile(),
              SizedBox(height: 20),
              Text('Factory Profile', style: TextStyle(fontSize: 18)),
              BuyerFactoryProfile(),
              SizedBox(height: 20),
              BuyerHeaderText(text1: 'Product we make', text2: 'See All'),
              SizedBox(height: 20),
              FeatureList(
                  img: 'assets/images/building.png',
                  text: 'Demo product',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BuyerProductDetails(),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
