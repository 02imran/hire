import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/request_for_quotation/request_for_quotation.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/components/user_data.dart';
import 'package:hire_app/constants.dart';
import 'product_details_slider_image.dart';

class BuyerProductDetailsBody extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Demo product name',
                style: kTextStyle,
              ),
              SizedBox(height: 20),
              ProductDetailsSliderImage(selectedIndex: selectedIndex),
              SizedBox(height: 20),
              Text(
                'Product Details',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              UserData(text1: 'Product', text2: '1971'),
              UserData(text1: 'Unit', text2: 'name'),
              UserData(text1: 'M/C Type', text2: 'dhaka'),
              UserData(text1: 'Number Of Machins', text2: '059169666'),
              UserData(text1: 'Production Capacity/Minute', text2: ''),
              UserData(
                  text1: 'Total Production Capacity/Day (24 hrs)', text2: ''),
              UserData(text1: 'Minimum Order Quantity', text2: ''),
              UserData(text1: 'Delivery Time', text2: ''),
              UserData(text1: 'Details:\n', text2: ''),
              SizedBox(height: 20),
              Center(
                child: CustomeButton(
                  text: 'REQUEST FOR QUOTATION',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => RequestForQuotation(),
                      ),
                    );
                  },
                  color: kAppBarColor,
                ),
              ),
              Center(
                child: CustomeButton(
                  text: 'COMPANY PROFILE',
                  press: () {},
                  color: kSuccessColor,
                  left: 65,
                  right: 65,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
