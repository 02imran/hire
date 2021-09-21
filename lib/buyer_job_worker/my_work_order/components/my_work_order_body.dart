import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/my_work_order_details/my_work_order_details.dart';
import 'package:hire_app/constants.dart';

class MyWorkOrderBody extends StatelessWidget {
  const MyWorkOrderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text('My work orders', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            MyWorkOrderList()
          ],
        ),
      ),
    );
  }
}

class MyWorkOrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(
      3,
      (i) => "Lorem Ipsum $i",
    );

    ///This file return listview iteam

    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: items.length,
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
                items[index],
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
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: kPurpleColor),
                    child: Center(
                        child: Text(
                      '9',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    )),
                  ),
                  Text(
                    'BIDS',
                    style: TextStyle(fontSize: 10),
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
      ),
    );
  }
}
