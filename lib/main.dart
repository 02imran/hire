import 'package:flutter/material.dart';
import 'package:hire_app/others/recorded_transaction.dart';
import 'package:hire_app/others/seller_my_bids.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SellerMyBids(),
    );
  }
}
