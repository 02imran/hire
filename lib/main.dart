import 'package:flutter/material.dart';

import 'package:hire_app/employeer/shorted_list/shorted_list.dart';

import 'buyer_job_worker/logo_with_order/logo_with_order.dart';
import 'employeer/offer_send/offer_send.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogoWithOrder(),
    );
  }
}
