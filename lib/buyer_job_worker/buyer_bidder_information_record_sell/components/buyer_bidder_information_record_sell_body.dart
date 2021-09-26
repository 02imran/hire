import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hire_app/buyer_job_worker/buyer_bidder_information_record_sell/components/bidder_experince_complete_review_record_sell.dart';
import 'package:hire_app/buyer_job_worker/buyer_bidder_reviews/buyer_bidder_reviews.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/components/user_data.dart';
import 'package:hire_app/constants.dart';

import 'record_cell_alert_dialog.dart';

class BuyerBidderInformationRecordSellBody extends StatelessWidget {


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
                'Bidder Information',
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
                      BidderExperinceCompleteAndReviewRecordSell(
                        expRev: 12,
                        text: 'Experince (yrs)',
                      ),
                      BidderExperinceCompleteAndReviewRecordSell(
                        expRev: 12,
                        text: 'Comleted Bids',
                      ),
                      BidderExperinceCompleteAndReviewRecordSell(
                        expRev: 8,
                        text: 'Reviews',
                      ),
                      BidderExperinceCompleteAndReviewRecordSell(
                        expRev: 4.5,
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
              UserData(text1: 'Bidder Area', text2: '059169666'),
              UserData(text1: 'Company', text2: ''),
              UserData(text1: 'Address', text2: ''),
              UserData(text1: 'Phone Number', text2: ''),
              SizedBox(height: 20),
              Text('Bid information'.toUpperCase()),
              SizedBox(height: 20),
              UserData(text1: 'Bid amount', text2: '৳ 51,000'),
              UserData(text1: 'Date and time', text2: '12/1/21 12.24'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomeButton(
                    text: 'See Reviews',
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BuyerBidderReviews(),
                        ),
                      );
                    },
                    color: kAppBarColor,
                    left: 5,
                    right: 5,
                  ),
                  SizedBox(width: 10),
                  CustomeButton(
                    text: 'Accept Bids',
                    press: () {},
                    color: kSuccessColor,
                    left: 5,
                    right: 5,
                  ),
                  SizedBox(width: 10),
                  CustomeButton(
                    text: 'Record Sell',
                    press: () {
                      recordSellDilogBox(context);
                    },
                    color: kPurpleColor,
                    left: 5,
                    right: 5,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
