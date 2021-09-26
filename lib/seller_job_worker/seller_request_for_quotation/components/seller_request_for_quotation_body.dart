import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';

import 'seller_estimate.dart';
import 'seller_estimate_button.dart';

class RequestForQuotationBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                'Request For Quotation',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text('Product: Dummy text', style: TextStyle(fontSize: 14)),
              SizedBox(height: 10),
              Text(
                'Quantity Requred (yerds)*',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              TextFormField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '*MOQ 120,000 yeards',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Others Details',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              TextFormField(),
              SizedBox(height: 20),
              Center(
                child: CustomeButton(
                  text: 'SUBMIT REQUEST FOR QUOTATION',
                  press: () {},
                  color: kSuccessColor,
                  left: 20,
                  right: 20,
                ),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.grey),
              SizedBox(height: 20),
              SellerEstimateButton(),
              SizedBox(height: 20),
              SellerEstimation(
                estimateText: 'Cost Estimation:',
                valu1: 1,
                value2: 1,
                dayText: '',
              ),
              SizedBox(height: 20),
              SellerEstimation(
                estimateText: 'Duration Estimation:',
                valu1: 1,
                value2: 1,
                dayText: 'day(s)',
              ),
              SizedBox(height: 20),
              Text(
                'This is an estimate, actual will be given by suplier',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
