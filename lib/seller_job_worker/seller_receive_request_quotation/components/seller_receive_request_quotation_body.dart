import 'package:flutter/material.dart';
import '../../../constants.dart';

class SellerReceiveRequestQuotationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('Received Request For Quotation (RFQs)', style: kTextStyle),
            SellerReceiveRequestQuotationList()
          ],
        ),
      ),
    );
  }
}

class SellerReceiveRequestQuotationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(
      10,
      (i) => "Lorem Ipsum $i",
    );

    ///This file return listview iteam

    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () {},
          child: Card(
            elevation: 5,
            child: ListTile(
              title: Text(
                items[index],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Requested By: sayed',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                  Text('Req Amount: 120,000', style: TextStyle(fontSize: 10)),
                  Text('Total Production capacity/day: 120,000',
                      style: TextStyle(fontSize: 10)),
                  Text('Phone: 2500', style: TextStyle(fontSize: 10)),
                  Text('Email: example@example.com',
                      style: TextStyle(fontSize: 10)),
                ],
              ),
              leading: Image.asset('assets/images/building.png'),
            ),
          ),
        ),
      ),
    );
  }
}
