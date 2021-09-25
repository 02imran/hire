import 'package:flutter/material.dart';
import 'package:hire_app/constants.dart';

class RecordedTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: Card(
                    elevation: 4,
                    child: Container(
                        padding: EdgeInsets.all(10),
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (_, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textMethodForInvoice(
                                  invoiceId: 'Invoice Id:',
                                  invoiceIdNo: ' 20210818-232445'),
                              textMethodForInvoice(
                                  invoiceId: 'Seller Name:',
                                  invoiceIdNo: ' Robiul (Seller)'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  textMethodForInvoice(
                                      invoiceId: 'Payment Status:',
                                      invoiceIdNo: ' Pertial Paid'),
                                  Text(
                                    ' Pertial Paid',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              textMethodForInvoice(
                                  invoiceId: 'Payment Type:',
                                  invoiceIdNo: ' LC'),
                              textMethodForInvoice(
                                  invoiceId: 'Amount:',
                                  invoiceIdNo: ' ৳46,000'),
                              Divider(color: kSuccessColor)
                            ],
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textMethodForInvoice({String? invoiceId, invoiceIdNo}) {
    return Text.rich(
      TextSpan(
          text: invoiceId,
          style: TextStyle(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: invoiceIdNo,
                style: TextStyle(fontWeight: FontWeight.w400))
          ]),
    );
  }
}
