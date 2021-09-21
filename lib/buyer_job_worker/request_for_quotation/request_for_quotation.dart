import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/request_for_quotation/components/request_for_quotation_body.dart';

import '../../constants.dart';

class RequestForQuotation extends StatelessWidget {
  const RequestForQuotation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: kAppBarColor,
      ),
      body: RequestForQuotationBody(),
    );
  }
}
