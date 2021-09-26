import 'package:flutter/material.dart';
import '../../../constants.dart';

class SellerAllWorkOrderBody extends StatelessWidget {
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
            SizedBox(height: 20),
            sellerAllWorOrderList()
          ],
        ),
      ),
    );
  }
  Widget sellerAllWorOrderList(){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (_, index) => GestureDetector(
        onTap: () {},
        child: Card(
          elevation: 5,
          child: ListTile(
            title: Text(
              'Name',
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Qty: 120,000', style: TextStyle(fontSize: 10)),
                Text('Remaining amt: 120,000',
                    style: TextStyle(fontSize: 10)),
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
    );
 
  }
}

