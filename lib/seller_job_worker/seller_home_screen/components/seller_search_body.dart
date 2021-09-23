import 'package:flutter/material.dart';
import 'package:hire_app/seller_job_worker/seller_company_and_factory_profile/seller_company_and_factory_profile.dart';
import 'seller_header_text.dart';
import 'seller_search_prod.dart';
import 'seller_feature_companies.dart';

class SellerSearchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 150,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/emptyimage.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 20),
              SellerSearchProd(),
              SizedBox(height: 20),
              SellerHeaderText(text1: 'Featured Companies', text2: 'View All'),
              SizedBox(height: 20),
              SellerFeatureList(
                img: 'assets/images/building.png',
                text: 'Dummy text',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => SellerCompanyAndFactoryProfile()),
                  );
                },
              ),
              SizedBox(height: 20),
              SellerHeaderText(text1: 'Featured Products', text2: 'View All'),
              SizedBox(height: 20),
              SellerFeatureList(
                  press: () {},
                  img: 'assets/images/building.png',
                  text: 'Dummy text'),
            ],
          ),
        ),
      ),
    );
  }
}
