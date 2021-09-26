import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hire_app/buyer_job_worker/buyer_bidder_information/buyer_bidder_information.dart';
import 'package:hire_app/constants.dart';

class BuyerBidderListBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              buyerBidderList()
            ],
          ),
        ),
      ),
    );
  }

  ListView buyerBidderList() {
    return ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BuyerBidderInformation(),
                    ),
                  );
                },
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text('Demo text'),
                    leading: SvgPicture.asset(
                      'assets/svg/user.svg',
                      height: 40,
                      width: 40,
                    ),
                    trailing: Column(
                      children: [
                        Text('৳ 48,000'),
                        SizedBox(height: 20),
                        Text('27/08/2020 12.24')
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohammadpur, Dhaka',
                          style: TextStyle(fontSize: 10),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: kStarColor,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
  }
}
