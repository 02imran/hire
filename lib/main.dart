import 'package:flutter/material.dart';
import 'seller_job_worker/seller_bid_history/seller_bid_history.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SellerBidHistory(),
    );
  }
}
