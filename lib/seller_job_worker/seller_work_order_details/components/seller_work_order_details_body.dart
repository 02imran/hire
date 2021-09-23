import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';
import 'package:hire_app/seller_job_worker/seller_can_see_buyer_information/seller_can_see_buyer_information.dart';
import 'seller_work_order_detail_slider_image.dart';

class SellerWorkOrderDetailsBody extends StatelessWidget {
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
              SellerWorkOrderDetailsSliderImage(selectedIndex: selectedIndex),
              SizedBox(height: 20),
              Text(
                'Work Order Details',
                style: kTextStyle,
              ),
              SizedBox(height: 10),
              Text(
                'Work Order Details',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              SizedBox(height: 10),
              Text(
                'Others Details:',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bid Your Price',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    color: Colors.grey.withOpacity(0.4),
                    height: 30,
                    width: 100,
                    child: Center(
                      child: Text('৳ 49,000'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomeButton(
                    text: 'Plase Bid'.toUpperCase(),
                    press: () {},
                    color: kSuccessColor,
                    left: 40,
                    right: 40,
                  ),
                  CustomeButton(
                    text: 'See Reviews'.toUpperCase(),
                    press: () {},
                    color: kAppBarColor,
                    left: 30,
                    right: 30,
                  ),
                ],
              ),
              Center(
                child: CustomeButton(
                  text: 'Buyer Profile'.toUpperCase(),
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => SellerCanSeenBuyerInformaiton()));
                  },
                  color: kAppBarColor,
                  left: 100,
                  right: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
