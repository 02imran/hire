import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/components/user_data.dart';
import 'package:hire_app/constants.dart';

import 'seller_can_see_buyer_information_complete_review.dart';

class SellerCanSeenBuyerInformaitonBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Buyer Information',
                style: kTextStyle,
              ),
              SizedBox(height: 30),
              Center(
                child: SvgPicture.asset(
                  'assets/svg/user.svg',
                  color: kAppBarColor,
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SellerCanSeenBuyerInformaitonCompleteAndReview(
                        expRev: '12',
                        text: 'Experince (yrs)',
                      ),
                      SellerCanSeenBuyerInformaitonCompleteAndReview(
                        expRev: '12',
                        text: 'Comleted Bids',
                      ),
                      SellerCanSeenBuyerInformaitonCompleteAndReview(
                        expRev: '8',
                        text: 'Reviews',
                      ),
                      SellerCanSeenBuyerInformaitonCompleteAndReview(
                        expRev: '4.5',
                        text: 'Ratings',
                      ),
                    ],
                  ),
                  Divider(),
                ],
              ),

              ///User data
              SizedBox(height: 20),
              UserData(text1: 'First Name', text2: '1971'),
              UserData(text1: 'Last Name', text2: 'name'),
              UserData(text1: 'Gender', text2: 'dhaka'),
              UserData(text1: 'Address', text2: ''),
              UserData(text1: 'Phone Number', text2: ''),
              SizedBox(height: 20),
              Center(
                child: CustomeButton(
                  text: 'See Reviews'.toUpperCase(),
                  press: () {},
                  color: kAppBarColor,
                  left: 100,
                  right: 100,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomeButton(
                    text: 'Call'.toUpperCase(),
                    press: () {},
                    color: kAppBarColor,
                    left: 50,
                    right: 50,
                  ),
                  SizedBox(width: 20),
                  CustomeButton(
                    text: 'Email'.toUpperCase(),
                    press: () {},
                    color: kSuccessColor,
                    left: 45,
                    right: 45,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
