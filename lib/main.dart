import 'package:flutter/material.dart';
import 'seller_job_worker/seller_recorded_transaction/seller_recorded_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SellerRecordedTransaction(),
    );
  }
}
