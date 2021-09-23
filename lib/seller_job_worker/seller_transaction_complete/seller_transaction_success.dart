import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/seller_transaction_body.dart';

class SellerTransactionSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: kAppBarColor,
      ),
      body: SellerTransactionBody(),
    );
  }
}
