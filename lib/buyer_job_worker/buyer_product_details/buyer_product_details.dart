import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_product_details/components/buyer_product_details_body.dart';

import '../../constants.dart';

class BuyerProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: kAppBarColor,
      ),
      body: BuyerProductDetailsBody(),
      
    );
  }
}