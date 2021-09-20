import 'package:flutter/material.dart';
import 'package:hire_app/constants.dart';

import 'buyer_header_text.dart';
import 'buyer_search_prod.dart';
import 'feature_companies.dart';

class BuyerSearchBody extends StatelessWidget {
  const BuyerSearchBody({Key? key}) : super(key: key);

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
              BuyerSearchProd(),
              SizedBox(height: 20),
              BuyerHeaderText(text1: 'Featured Companies', text2: 'View All'),
              SizedBox(height: 20),
              FeatureList(
                  img: 'assets/images/building.png', text: 'Dummy text'),
              SizedBox(height: 20),
              BuyerHeaderText(text1: 'Featured Products', text2: 'View All'),
              SizedBox(height: 20),
              FeatureList(
                  img: 'assets/images/building.png', text: 'Dummy text'),
            ],
          ),
        ),
      ),
    );
  }
}
