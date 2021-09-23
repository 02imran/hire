import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_home_screen/components/buyer_header_text.dart';
import 'package:hire_app/buyer_job_worker/buyer_home_screen/components/feature_companies.dart';
import 'package:hire_app/components/company_details.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/seller_job_worker/seller_product_details/seller_product_details.dart';
import 'seller_buyer_company_profile.dart';
import 'seller_buyer_factory_profile.dart';

class SellerCompanyAndFactoryProfileBody extends StatelessWidget {
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
                style: TextStyle(fontSize: 24),
              ),
              CompanyDetails(),
              SizedBox(height: 20),
              Text(
                'Company Profile',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              SellerBuyerCompanyProfile(),
              SizedBox(height: 20),
              Text('Factory Profile', style: TextStyle(fontSize: 18)),
              SellerBuyerFactoryProfile(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomeButton(
                    text: 'Edit Profile'.toUpperCase(),
                    press: () {},
                    color: kSuccessColor,
                    left: 10,
                    right: 10,
                  ),
                  CustomeButton(
                    text: 'Update Password'.toUpperCase(),
                    press: () {},
                    color: kSuccessColor,
                    left: 10,
                    right: 10,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
