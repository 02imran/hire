import 'package:flutter/material.dart';
import '../../../constants.dart';

class SellerMyProductBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('My Products', style: kTextStyle),
            SellerMyProductList()
          ],
        ),
      ),
    );
  }
}

class SellerMyProductList extends StatelessWidget {
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
                  Text('Marcentizing and co',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Text('MOQ: 120,000', style: TextStyle(fontSize: 10)),
                  Text('Total Production capacity/day: 120,000',
                      style: TextStyle(fontSize: 10)),
                  Text('Experiance: 2500', style: TextStyle(fontSize: 10)),
                  Text('Company Spaciality',
                      style: TextStyle(fontSize: 10, color: kSuccessColor)),
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
