import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/my_work_order_details/my_work_order_details.dart';
import 'package:hire_app/constants.dart';

class SellerBidhistoryBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text('My work orders', style: kTextStyle),
            SizedBox(height: 20),
            bidHistoryList(context)
          ],
        ),
      ),
    );
  }
  Widget bidHistoryList(BuildContext context){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (_, index) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MyWorkOrderDetails(),
            ),
          );
        },
        child: Card(
          elevation: 5,
          child: ListTile(
            title: Text(
              'Name',
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Qty: 500', style: TextStyle(fontSize: 10)),
                Text('Posted on', style: TextStyle(fontSize: 10)),
              ],
            ),
            trailing: Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: 'My bid\n',
                    style: TextStyle(fontSize: 10),
                    children: [
                      TextSpan(
                          text: '৳ 12,000', style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
                SizedBox(height: 7),
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
            leading: Image.asset('assets/images/building.png'),
          ),
        ),
      ),
    );
  
  }
}

