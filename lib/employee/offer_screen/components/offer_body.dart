import 'package:flutter/material.dart';
import 'package:hire_app/components/list_view_prod.dart';
import 'package:hire_app/constants.dart';

class OfferBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                'Your offer:',
                style: kTextStyle,
              ),
              SizedBox(height: 20),
              ListViewProd(),
            ],
          ),
        ),
      ),
    );
  }
}
