import 'package:flutter/material.dart';
import 'package:hire_app/buyer_job_worker/buyer_home_screen/buyer_search.dart';
import 'package:hire_app/constants.dart';

import 'want_work_order.dart';

class LogoWithOrderBody extends StatelessWidget {
  const LogoWithOrderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/logo.png')),
              WantWorkOrder(
                text: 'I want work order',
                color: kSuccessColor,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => BuyerSearch()));
                },
              ),
              SizedBox(height: 20),
              WantWorkOrder(
                text: 'I want to give work order',
                color: kRedColor,
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
