import 'package:flutter/material.dart';
import 'package:hire_app/constants.dart';

class BuyerRecordedTransactionBody extends StatelessWidget {
  const BuyerRecordedTransactionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text('Recorded Transaction', style: kTextStyle),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (_, index) => Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text(
                      'Name text',
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Qty: 500', style: TextStyle(fontSize: 10)),
                        Text('Delivery time: 120,000',
                            style: TextStyle(fontSize: 10)),
                        Text('Payment method LC (30 days)',
                            style: TextStyle(fontSize: 10)),
                        Text('Posted on', style: TextStyle(fontSize: 10)),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 40,
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 13,
                                color: kStarColor,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '14/02/20',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    leading: Image.asset('assets/images/building.png'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
