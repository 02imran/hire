import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_search/components/buyer_search_body.dart';

class BuyerSearch extends StatelessWidget {
  const BuyerSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BuyerSearchBody(),
    );
  }
}
