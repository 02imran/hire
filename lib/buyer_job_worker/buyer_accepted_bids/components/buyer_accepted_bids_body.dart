import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuyerAcceptedBidBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text('Accepted Bids', style: kTextStyle),
          SizedBox(height: 20),
          Card(
            elevation: 5,
            child: ListTile(
              title: Text(
                'Demo name',
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Product: 500', style: TextStyle(fontSize: 12)),
                  Text('Bid Amount: 120,000', style: TextStyle(fontSize: 12)),
                  SizedBox(height: 10),
                  Container(
                    height: 15,
                    width: 70,
                    decoration: BoxDecoration(
                        color: kSuccessColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        'Accepted',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  )
                ],
              ),
              leading: Image.asset('assets/images/building.png'),
            ),
          ),
        ],
      ),
    );
  }
}
