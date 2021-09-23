import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/seller_work_order_details_body.dart';

class SellerWorkOrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: kAppBarColor,
      ),
      body: SellerWorkOrderDetailsBody(),
      
    );
  }
}