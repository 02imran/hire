import 'package:flutter/material.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/components/filter_search.dart';
import 'package:hire_app/constants.dart';

import 'seller_add_and_take_photos.dart';

class SellerPostNewWorkOrderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TODO: Add dropdown menu
              SizedBox(height: 20),
              FilterSearch(
                text: 'demo',
                icon: Icons.arrow_drop_down,
                press: () {},
              ),
              SizedBox(height: 10),
              FilterSearch(
                text: 'demo',
                icon: Icons.arrow_drop_down,
                press: () {},
              ),
              SizedBox(height: 10),
              FilterSearch(
                text: 'demo',
                icon: Icons.arrow_drop_down,
                press: () {},
              ),
              SizedBox(height: 30),
              Text('Title*'),
              TextFormField(),
              SizedBox(height: 30),
              Text('Unit*'),
              SizedBox(height: 20),

              FilterSearch(
                text: 'Select unit',
                icon: Icons.arrow_drop_down,
                press: () {},
              ),

              SizedBox(height: 20),
              Text('Machine Type (multiple)'),
              SizedBox(height: 20),

              FilterSearch(
                text: 'Select Machine Type',
                icon: Icons.arrow_drop_down,
                press: () {},
              ),
              SizedBox(height: 20),
              Text('No of Machins'),
              SizedBox(height: 20),

              FilterSearch(
                text: 'No. of Machine',
                icon: Icons.arrow_drop_down,
                press: () {},
              ),
              SizedBox(height: 20),
              Text('Production Capacity Per Minute'),

              TextFormField(),
              SizedBox(height: 20),
              Text('Total Production Capacity/Day'),

              TextFormField(),
              SizedBox(height: 20),
              Text('Minimum Order Quantity'),

              TextFormField(),
              SizedBox(height: 20),
              Text('Lead Time (Days)'),
              SizedBox(height: 20),

              FilterSearch(
                text: 'Select Lead Time',
                icon: Icons.arrow_drop_down,
                press: () {},
              ),
              SizedBox(height: 20),
              Text('Delivery Time'),
              SizedBox(height: 20),

              FilterSearch(
                text: 'Select Delivery Time',
                icon: Icons.arrow_drop_down,
                press: () {},
              ),
              SizedBox(height: 20),
              Text('Currency'),
              SizedBox(height: 20),

              FilterSearch(
                text: 'Select Currency',
                icon: Icons.arrow_drop_down,
                press: () {},
              ),
              SizedBox(height: 20),
              Text('Price Per Unit'),

              TextFormField(),
              SizedBox(height: 20),
              Text('Price Per Unit'),

              TextFormField(),

              SizedBox(height: 20),
              Text('Add photos* (you can also upload order specific photo)'),
              SizedBox(height: 20),
              SellerAddAndTakePhoto(),
              SizedBox(height: 40),
              Center(
                child: CustomeButton(
                    text: 'POST YOUR WORK ORDER',
                    press: () {},
                    // press: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (_) => MyWorkOrder()));
                    // },
                    color: kSuccessColor),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
