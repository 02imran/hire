import 'package:flutter/material.dart';
import 'buyer_job_worker/buyer_post_new_work_order/buyer_post_new_work_order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BuyerPostNewWorkOrder(),
    );
  }
}
