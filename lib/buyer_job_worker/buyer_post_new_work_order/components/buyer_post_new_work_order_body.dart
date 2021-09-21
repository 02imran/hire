import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/my_work_order/my_work_order.dart';
import 'package:hire_app/components/custom_button.dart';
import 'package:hire_app/components/expertise.dart';
import 'package:hire_app/constants.dart';

import 'add_and_take_photos.dart';

class BuyerPostNewWorkOrderBody extends StatelessWidget {
  const BuyerPostNewWorkOrderBody({Key? key}) : super(key: key);

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
              SizedBox(height: 30),
              Text('Quantity Requred*'),

              TextFormField(),
              SizedBox(height: 20),
              Text('Order Description*'),

              TextFormField(),
              SizedBox(height: 20),
              Text('Add photos* (you can also upload order specific photo)'),
              SizedBox(height: 20),
              AddAndTakePhoto(),
              SizedBox(height: 40),
              Center(
                child: CustomeButton(
                    text: 'POST YOUR WORK ORDER',
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MyWorkOrder()));
                    },
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
