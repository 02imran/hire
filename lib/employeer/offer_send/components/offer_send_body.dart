import 'package:flutter/material.dart';
import 'package:hire_app/employeer/offer_send/components/offer_send_list.dart';


class OfferSendBody extends StatelessWidget {
  const OfferSendBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18),
              Text('Offer Send', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              ListOfOfferData(),
            ],
          ),
        ),
      ),
    );
  }
}
