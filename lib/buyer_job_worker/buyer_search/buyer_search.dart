import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_search/components/buyer_search_body.dart';
import 'package:hire_app/constants.dart';

class BuyerSearch extends StatelessWidget {
  const BuyerSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: kAppBarColor,
        ),
      body: BuyerSearchBody(),
    );
  }
}
