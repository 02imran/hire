import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_product_search/buyer_product_search.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BuyerProductSearch(),
    );
  }
}
