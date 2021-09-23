import 'package:flutter/material.dart';
import 'package:hire_app/seller_job_worker/seller_work_order_details/seller_work_order_details.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SellerWorkOrderDetails(),
    );
  }
}
