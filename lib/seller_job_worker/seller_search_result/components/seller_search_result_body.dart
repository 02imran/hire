import 'package:flutter/material.dart';
import '../../../constants.dart';

class SellerSearchResultBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text('Search Result', style: kTextStyle),
            SellerSearchResultList()
          ],
        ),
      ),
    );
  }
}

class SellerSearchResultList extends StatelessWidget {
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
                  Text('MOQ: 120,000', style: TextStyle(fontSize: 10)),
                  Text('Delivery Time: 15 days',
                      style: TextStyle(fontSize: 10)),
                  Text('Experiance: 2500', style: TextStyle(fontSize: 10)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Posted on: 22 November 2019',
                          style: TextStyle(fontSize: 10)),
                      Container(
                        height: 20,
                        width: 40,
                        decoration: BoxDecoration(
                            color: kSuccessColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          'Open',
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
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
