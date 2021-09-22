import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/constants.dart';

class MyWorkOrderDetailsBody extends StatelessWidget {
  const MyWorkOrderDetailsBody({Key? key}) : super(key: key);

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
              Text('Demo title', style: TextStyle(fontSize: 20)),
              Image.asset(
                'assets/images/building.png',
                height: 300,
                width: double.infinity,
              ),
              SizedBox(height: 20),
              Text('Work order details:', style: TextStyle(fontSize: 22)),
              SizedBox(height: 10),
              Text('Quantity Requred: 5000 yards',
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text('Other Details:', style: TextStyle(fontSize: 14)),
              SizedBox(height: 5),
              Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
                  style: TextStyle(fontSize: 12)),
              SizedBox(height: 20),
              Center(child: Text('9 bids', style: TextStyle(fontSize: 10))),
              Center(
                child: CustomeButton(
                  text: 'Bidders List',
                  press: () {},
                  color: kPurpleColor,
                  left: 80,
                  right: 80,
                ),
              ),
              Center(
                child: CustomeButton(
                  text: 'Close Work Order',
                  press: () {},
                  color: kPurpleColor,
                  left: 60,
                  right: 60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
