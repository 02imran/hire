import 'package:flutter/material.dart';
import 'package:hire_app/components/list_view_prod.dart';

class OfferBody extends StatelessWidget {
  const OfferBody({Key? key}) : super(key: key);

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
                style: TextStyle(fontSize: 20),
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
